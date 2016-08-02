import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.HasWord;
import edu.stanford.nlp.ling.Sentence;
import edu.stanford.nlp.ling.TaggedWord;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.parser.nndep.DependencyParser;
import edu.stanford.nlp.process.*;
import edu.stanford.nlp.tagger.maxent.MaxentTagger;
import edu.stanford.nlp.trees.*;

import java.util.List;
import java.util.Scanner;
import java.io.StringReader;


public class Parser {

    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        System.out.print("type a setence wanted to be parsed: ");
        String sentence = scan.nextLine();

        TokenizerFactory<CoreLabel> tokFac =
                PTBTokenizer.factory(new CoreLabelTokenFactory(), "");

        Tokenizer<CoreLabel> tok = tokFac.getTokenizer(new StringReader(sentence));
        List<CoreLabel> words = tok.tokenize();

        LexicalizedParser lp = null;

        EngPCFG(lp,words);

        /* other parsers */

        // EngPCFGCaseLess(lp,words);
        // EngFactord(lp,words;
        // EngRNN(lp,words);
        // DependencyParse(sentence);
    }

    public static void EngPCFG(LexicalizedParser lp, List<CoreLabel> words){

        System.out.println("ParserModel:::::: englishPCFG");
        String parserModel = "edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz";
        lp = LexicalizedParser.loadModel(parserModel);

        Tree parse = lp.apply(words);
        parse.pennPrint();
//        System.out.println(parse);
        System.out.println();
        System.out.println();

        TreebankLanguagePack tlp = lp.treebankLanguagePack();
        GrammaticalStructureFactory gsf = tlp.grammaticalStructureFactory();
        GrammaticalStructure gs = gsf.newGrammaticalStructure(parse);
        List<TypedDependency> tdl = gs.typedDependenciesCCprocessed();

        System.out.println(tdl);
        System.out.println();
        System.out.println();

        for(TypedDependency td : tdl){
            if(td.reln().toString().contains("nsubj") || td.reln().toString().equals("dobj") || td.reln().toString().equals("nummod")){
                System.out.println(td);
            }
        }
    }

    public static void EngPCFGCaseLess(LexicalizedParser lp, List<CoreLabel> words){

        System.out.println("ParserModel:::::: englishPCFG caseless");
        String parserModel = "edu/stanford/nlp/models/lexparser/englishPCFG.caseless.ser.gz";
        lp = LexicalizedParser.loadModel(parserModel);

        Tree parse = lp.apply(words);
        parse.pennPrint();
        System.out.println();
        System.out.println();

        TreebankLanguagePack tlp = lp.treebankLanguagePack(); // PennTreebankLanguagePack for English
        GrammaticalStructureFactory gsf = tlp.grammaticalStructureFactory();
        GrammaticalStructure gs = gsf.newGrammaticalStructure(parse);
        List<TypedDependency> tdl = gs.typedDependenciesCCprocessed();
        System.out.println(tdl);
        System.out.println();
        System.out.println();
        System.out.println();

    }

    public static void EngFactord(LexicalizedParser lp, List<CoreLabel> words){

        System.out.println("ParserModel:::::: english Factored");
        String parserModel = "edu/stanford/nlp/models/lexparser/englishFactored.ser.gz";
        lp = LexicalizedParser.loadModel(parserModel);

        Tree parse = lp.apply(words);
        parse.pennPrint();
        System.out.println();
        System.out.println();

        TreebankLanguagePack tlp = lp.treebankLanguagePack(); // PennTreebankLanguagePack for English
        GrammaticalStructureFactory gsf = tlp.grammaticalStructureFactory();
        GrammaticalStructure gs = gsf.newGrammaticalStructure(parse);
        List<TypedDependency> tdl = gs.typedDependenciesCCprocessed();
        System.out.println(tdl);
        System.out.println();
        System.out.println();
        System.out.println();

    }

    public static void EngRNN(LexicalizedParser lp, List<CoreLabel> words){

        System.out.println("ParserModel:::::: english RNN");
        String parserModel = "edu/stanford/nlp/models/lexparser/englishRNN.ser.gz";
        lp = LexicalizedParser.loadModel(parserModel);

        Tree parse = lp.apply(words);
        parse.pennPrint();
        System.out.println();
        System.out.println();

        TreebankLanguagePack tlp = lp.treebankLanguagePack(); // PennTreebankLanguagePack for English
        GrammaticalStructureFactory gsf = tlp.grammaticalStructureFactory();
        GrammaticalStructure gs = gsf.newGrammaticalStructure(parse);
        List<TypedDependency> tdl = gs.typedDependenciesCCprocessed();
        System.out.println(tdl);
        System.out.println();
        System.out.println();
        System.out.println();

    }


   public static void DependencyParse(String sete){

       String modelPath = DependencyParser.DEFAULT_MODEL;
       String taggerPath =
               "edu/stanford/nlp/models/pos-tagger/english-left3words/english-left3words-distsim.tagger";

       System.out.println("ParserModel:::::: Tagger::: english-left3words");

       MaxentTagger tagg = new MaxentTagger(taggerPath);
       DependencyParser parser = DependencyParser.loadFromModelFile(modelPath);

       DocumentPreprocessor tok = new DocumentPreprocessor(new StringReader(sete));

       for(List<HasWord> s : tok){
           List<TaggedWord> tagged = tagg.tagSentence(s);
           GrammaticalStructure gs = parser.predict(tagged);

           System.out.println(gs);
       }

   }
}
