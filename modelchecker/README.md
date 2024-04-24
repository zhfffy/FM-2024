## modelchecker
2022.3.23 add subsumption


2023.3.26 add heuristic

定义一个比较类class heuristic_Lit_CMP,内置一个打分数组counts和一个重载比较函数。

在class PDR中定义一个比较类的指针heuristic_lit_cmp，初始化时将打分数组counts的长度设为nInputs+nLatches+2 (与variables数组相对应)

void updateLitOrder(Cube &cube, int level)函数首先作decay，其次对cube中出现的literal加一分

排序采用 stable_sort(assumptions.begin(), assumptions.end(), *heuristic_lit_cmp);


2023.3.28 some minor changes

1. 每次new frame时将top_frame_cannot_reach_bad重置为true
2. add cube c时，通过 *pair<set<Cube, Cube_CMP>::iterator, bool> rv = frames[k].cubes.insert(cube)* 来判断c是否已经在cubeset中, 如果c已在set中则直接返回
3. 论文 *efficient modular sat solving for ic3* 中提到的改动：每次propagate子句时，不是从F0开始向后propagate，而是从earliest_strengthened_frame向后propagate。这样大幅度减少了propagate子句的次数，效率大幅提升。使用方法：将basic.hpp中的use_earliest_strengthened_frame参数置为1
   
   也正如论文中所提，上述做法可能导致IC3不收敛，可能需要时不时地从F0开始propagate？
4. extract函数中补上if(l!=0)

2023.4.5
修复了MIC函数的一个bug: drop literal时cube会发生改变，因此用一个临时变量tmp_cube来drop_literal
Cube tmp_cube = cube;
    for(int l : tmp_cube){      
        vector<int> cand;
        for(int i : cube){
            if(i != l)
                cand.push_back(i);
        }