import 'dart:async';
import "dart:html";
import "package:CreditsLib/CharacterLib.dart";
import 'package:CreditsLib/src/CharacterObject.dart';
import 'package:RenderingLib/RendereringLib.dart';
Element content = querySelector("#content");

Future<Null> main() async{
  heartfeltThanks();
  await Loader.preloadManifest();
  List<CreditsObject> credits = await CreditsObject.slurpCredits();
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