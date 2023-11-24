class BackdropFilterDesign extends StatefulWidget{
  const BackdropFilterDesign({Key? key}): super(key:key);

  @override
  State<BackdropFilterDesign> createState() => BackdropFilterDesignState();
}

class _BackdropFilterDesignState extends State<BackdropFilterDesign>{
  @override
  Widget build(BuildContext context){
    return Scaffold( 
      backgroundColor:Colors.black,
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/night.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
    )
  }
}