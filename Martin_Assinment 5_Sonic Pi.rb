in_thread do
  loop do
    sample :drum_heavy_kick, amp: 2
    sleep 0.5
  end
end
in_thread do
  sleep 0.5
  loop do
    sample :drum_snare_hard, amp: 1,decay_level:0.5
    sleep 1
  end
end

in_thread do
  sleep 0.25
  loop do
    sample :drum_cymbal_closed
    sleep 0.5
  end
end
in_thread do
  loop do
    sample :drum_cymbal_open, amp: 0.2
    sleep 2
  end
end

in_thread do
  sleep 3.9
  loop do
    sample :drum_snare_soft, amp:0.5
    sleep 4
  end
end
in_thread do
  sleep 4.1
  loop do
    sample :drum_roll, amp: 0.3, finish: 0.20 if one_in (2)
    sleep 4
  end
end
in_thread do
  with_fx :reverb  do
    loop do
      play 60, pan: -1
      sleep 1.5
      play 60
      sleep 0.5
      play 70, pan: 1, amp: 0.5
      sleep 1
      play 67, pan: 1, amp: 0.75
      sleep 0.5
      play 63  , pan: 1, amp: 0.5
      sleep 0.5
      play 55, pan: -1, amp: 0.65
      sleep 0.25
      play 58
      sleep 1
      play 58
      sleep 0.75
      play 65, pan: 1, amp: 0.70
      sleep 1
      play 60, pan: 1, amp: 0.5
      sleep 0.25
      play 63, pan: 1, amp: 0.55
      sleep 0.75
      in_thread do
        loop do
          sample :drum_heavy_kick
          sleep 1
        end
      end
      
      loop do
        use_synth :fm
        play 48, release: 0.2, amp: 0.5
        sleep 0.5
        play 46, release: 0.2, amp: 2
        sleep 0.5
        play 48, release: 0.2, amp: 0.5
        sleep 0.5
        play 44, release: 0.2, amp: 1.5 if one_in (2)
        sleep 0.5
        
      end
      
    end
  end
  
end

