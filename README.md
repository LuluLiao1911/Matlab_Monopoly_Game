# Matlab_Monopoly_Game
A text-based Monopoly game developed in MATLAB for the Purdue PAGE program 2025.7

## Demo
1. Enter Game Interface
<img width="511" height="539" alt="EnterGameUI" src="https://github.com/user-attachments/assets/3f36d264-a8ff-4385-91e0-1f04f4762310" />

2. Player Status Update
<img width="478" height="392" alt="PlayerStatusUpdate" src="https://github.com/user-attachments/assets/d27114d3-7105-43d9-9186-a0d4b47a3630" />

3. Lottery Game Interface
<img width="603" height="415" alt="LotteryGameUI" src="https://github.com/user-attachments/assets/262a3d5b-ccf9-45bb-b30d-19cca0c1ed07" />

4. Lottery Game reveal effect
<img width="1292" height="601" alt="截圖 2026-02-04 上午10 59 28" src="https://github.com/user-attachments/assets/48577955-bb75-4f34-8791-b1fe1082d69d" />

5. Lottery Game result
<img width="604" height="214" alt="LotteryResult" src="https://github.com/user-attachments/assets/1bf24916-b801-4b47-9267-7f4cc906be99" />

## Key Feature
1. Intuitive User Interface
Despite being a text-based game, the interface is designed for maximum clarity:
-Clean Layout: Organized status updates for player balances, movements, and game events. Careful handling of player movement and transaction logs to ensure a seamless gaming flow.

2. Dynamic Lottery Animation
To enhance user engagement, I implemented a custom "reveal effect" system for lottery results.
-Visual FeedBack: Real-time progressive loading dots.
-Precision Timing: Utilized MATLAB's `pause` and `fprintf` functions to create a 3-second suspense effect before revealing winning numbers, mimicking a real-world broadcast experience.

3. Technical Highlights
-Language: MATLAB
-Concepts: Array Indexing Optimization, Modular Function Design, Randomized Algorithms.



## Original Team Development (Purdue PAGE)
**Lulu Liao**: 

    1. Designed the core game engine and main execution loop.
    2. Developed the `updatemoney` logic and transaction system.
    3. Developed the lottery system.
    
    ('dramaticPrint.m', 'lottery.m', 'replace.m', 'update1.m', 'update2.m')
    
    
**Dani Hu**: 

    1. Designed the initial map data structure and coordinate system.
    2. Co-authored the basic rule set and win/loss conditions.
    
    ('monopoly.m', 'monopolyPrintMap.m', 'transform.m', 'updateMoney.m')
    
**Andy Cheng**:   

    1. Start/End Game interface.
    2. Money balance board interface.
    
    ('displayMoney.m', 'manual.m', 'monopolyStart.m', 'monopolyEnd.m')

    
## How to Run
1. Clone this repository.
2. Open MATLAB and navigate to the project folder.
3. Run the main script: monopoly



