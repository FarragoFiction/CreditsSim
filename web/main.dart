import 'dart:async';
import "dart:html";
import 'navbar.dart';
import "package:CreditsLib/CharacterLib.dart";
import 'package:CreditsLib/src/CharacterObject.dart';
import 'package:DollLibCorrect/src/Dolls/Doll.dart';
import 'package:RenderingLib/RendereringLib.dart';
Element content = querySelector("#content");

String targetWords =  getParameterByName("target",null);

Future<Null> main() async{
  heartfeltThanks();
  await Doll.loadFileData();
  List<CreditsObject> credits = await CreditsObject.slurpAllCredits();
  if(targetWords != null) {
      //i am the best at var names, it is me
      List<String> doop = targetWords.split("_");
      credits = CreditsObject.filterBy(credits, doop);
  }
  CreditsObject.drawCredits(credits, content);
}

void heartfeltThanks() {
  ImageElement me = new ImageElement(src: "images/jadedResearcher.png");
  me.style.float = "left";
  content.append(me);
  DivElement thanks = new DivElement();
  thanks.style.verticalAlign = "middle";
  thanks.style.height = "${me.height}px";
  thanks.setInnerHtml("On January 13th, 2017, I had a dumb idea. This idea grew and grew, fertilized by the ideas, talent and support of people all over the world. Seriously. Thank you.<br><br>-jadedResearcher<br>p.s. If you want to be included on this page, create a data string <a href = 'create.html'>here</a>.");
  content.append(thanks);
}