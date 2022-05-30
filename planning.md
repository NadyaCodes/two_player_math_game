# classes
player class (state: holds player number, score   behaviour: answer question method)

game class (behaviour: asks questions, evaluates true/false input state: outputs responses)
___

# player

needs: 
- player number (or name?), points (number)

- lost? boolean

- answer question (method)? Though probably not....because I'll just type it in


# game
needs: 
- players 
- round number
- current_player

## methods
- generate_question (ends in printing question)
- evaluate_answer (true/false)
- next_round (round typing and rotate players?)
- game_over? (see if a player has lost)
- display_game_status (show current score)
- display_winner (show winner phrase)

- play_game loop (until game_over? : next_round, generate_question, evaluate_answer, display_game_status. Then, display_winner)