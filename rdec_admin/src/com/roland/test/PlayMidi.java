package com.roland.test;

import java.io.File;

import javax.sound.midi.MidiSystem;
import javax.sound.midi.Sequence;
import javax.sound.midi.Sequencer;

public class PlayMidi
{
    private static File sound;
    private static Sequence seq;
    private static Sequencer midi;
    
    public static void Play(String filename)
    {
         try 
         {
             sound = new File(filename);
             seq = MidiSystem.getSequence(sound);
             midi= MidiSystem.getSequencer();
             midi.open();
             midi.setSequence(seq);
             
             if(!midi.isRunning())
                midi.start();
             
         } catch (Exception ex) {
         }
    }
    
    public static void Stop()
    {
        if(midi.isRunning())
            midi.stop();
        
        if(midi.isOpen())
            midi.close();
    }
    
    public static void main(String[] args)
    {
        PlayMidi.Play("C:\\Users\\Administrator\\Desktop\\Sample01-Sample20\\SAMPLE01.MID");
        long time = midi.getMicrosecondLength()/1000;

        try 
        {
            Thread.sleep(time);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        PlayMidi.Stop();
    }
} 

