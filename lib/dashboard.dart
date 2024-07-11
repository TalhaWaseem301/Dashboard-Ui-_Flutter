import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {

  var height,width;
  List imgData=[
    "images/mcqs.png",
    "images/quiz.png",
    "images/pastpapers.png",
    "images/pdf.png",
    "images/job.png",
    "images/about.png",
  ];
  List titles=[
    "MCQS",
    "QUIZ",
    "PAPER",
    "PDF",
    "JOB",
    "ABOUT",
  ];
  @override
  Widget build(BuildContext context) {
    height =MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo,
          //height: height,
          width: width,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                ),
                height: height*0.23,
                width: width,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("images/job.png"),
                              ),
                            ),
        
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 20,
        
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dashboard",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                          ),
                          SizedBox(height: 10),
                          Text(""
                              "Last update: 11 july 2024",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
        
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  //height: height*0.75,
                  width: width,
                  padding: EdgeInsets.only(bottom: 20),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: imgData.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8 ,horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(imgData[index],
                              width: 100,),
                              Text(
                                  titles[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },

                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}

