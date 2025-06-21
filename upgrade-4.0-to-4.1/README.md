Shared on https://forums.maslowcnc.com/t/azas-maslow-4-0-to-4-1-upgrade-notes-questions/24402

Sharing some notes and questions in this topic now that I'm finally getting around to tinkering with Maslow 4.1.  

Been a while, so I'm behind/hazy on what the 4.0 to 4.1 migration steps are.  Below is my understanding, please confirm, correct or redirect me to latest greatest process folks should follow.  Cheers!

## Plan...
Upgrading Maslow 4.0 to 4.1 

- Read/follow https://www.maslowcnc.com/41-upgrade-instructions
  - Partially Disassemble 4.0, https://www.youtube.com/watch?v=T6YOMy4PIlM
- Assemble 4.1
  - See https://www.youtube.com/@MaslowGuides, docs will evolve/improve, so see what's new/updated, specifically:
    - Assemble 4.1 Arms, https://www.youtube.com/watch?v=eZelnkdbFbk
    - Assemble Router mount, https://www.youtube.com/watch?v=SX6Un_KJFtk
    - Building the sled, https://www.youtube.com/watch?v=-YXFFvfvOZc
    - Putting it all together, https://www.youtube.com/watch?v=29Pf2GpZ3kI
    - Install firmware, https://www.youtube.com/watch?v=od7DpdLel6A
      - https://github.com/BarbourSmith/FluidNC/releases/
- Calibration walkthrough, https://www.youtube.com/watch?v=mQwz0omOKJc
- First Cut tutorial
   - Some Maslow Coaster/Sign, or, some other useful hello world calibration verifying beginner project (e.g. tool, jig, etc...)?
- Share feedback post build, to help inform design/firmware/doc improvements, maybe a questionnaire like [this](https://forum.v1e.com/t/lr4-how-many-hours-to-build-lr4/45641). 

## Community tips
- Hardware:
  - Bolts to consider:
    - Consider Socket cap heads where possible, check clearances of near by parts though... [Beagle's post](https://forums.maslowcnc.com/t/stripped-hex-screws/22506/2)
    - Consider using some 12mm and 16mm bolts when needed to help better engage Nylock, [Dlang's post](https://forums.maslowcnc.com/t/new-torx-screw-replacements/23571/2).
  - Dealing with stripped bolt heads:
    - Drill out stripped heads using 3mm, start with 2mm, see [Beagle's post](https://forums.maslowcnc.com/t/stripped-hex-screws/22506/2).
    - Use vice grips to twist out and remove headless bolts, see [Aggie.wes's post](https://forums.maslowcnc.com/t/jst-upgrade-install-loctite-got-me/22480/7).
    - Consider using rubber band between bit and bolt head for extra grip, see[ronlawrence3's post](https://forums.maslowcnc.com/t/stripped-allen-bolts/20729/3?u=azab2c).
    - Consider #2 triangle bit, not common but could be great?, see [GESDesigns's post](https://forums.maslowcnc.com/t/stripped-allen-bolts/20729/7)
    - If all else fails, ensure sufficient home and medical insurance policy coverage, try blowtorch/hot-blade to cut the screws out, [TebrynNym's  post](https://forums.maslowcnc.com/t/frustrated-and-ready-to-flip-a-table/23525).
  - Dealing with nut spin:
    - Try jamming small straight screw driver between nut and plastic recess. see [DLang's post](https://forums.maslowcnc.com/t/frustrated-and-ready-to-flip-a-table/23525/2?u=azab2c).




## Feedback...
- Maslow Packaging
  - Arrived nicely packaged, bundled and looked organized to me.
  - Consider reducing unboxing and getting started friction/frustration by including sticker with Maslow CNC logo + QR Code.  Depending on whether upgrade/full kit, the QR Code points to either 4.0 to 4.1 migration doc, or, full 4.1 assembly-setup docs.  Consider using intermediate forwarding URL for QR Codes so you can update URLs.
- Partially Disassemble 4.0
  - When removing 6x bolts from uprights, avoid nut spins by pushing bolts up from under the sled.
  - Power up machine to raise router mount subassembly up off the sled subassembly.



@ Admins, feel free to edit my posts if that's faster/easier than responding back and forth.  Maybe there's a wiki with 4.0 to 4.1 upgrade roadmap already?