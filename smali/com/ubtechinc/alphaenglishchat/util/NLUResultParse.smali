.class public Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;
.super Ljava/lang/Object;
.source "NLUResultParse.java"


# static fields
.field private static final NLU_INTERPRETATION_RESULTS:Ljava/lang/String; = "nlu_interpretation_results"

.field private static final NUANCE_ACTION:Ljava/lang/String; = "action"

.field private static final NUANCE_CALENDAR:Ljava/lang/String; = "CALENDAR"

.field public static final NUANCE_CALENDARX:Ljava/lang/String; = "CALENDARX"

.field public static final NUANCE_CALENDAR_DATE:Ljava/lang/String; = "DATE"

.field public static final NUANCE_CALENDAR_DATE_ABS:Ljava/lang/String; = "DATE_ABS"

.field public static final NUANCE_CALENDAR_DATE_REL:Ljava/lang/String; = "DATE_REL"

.field public static final NUANCE_CALENDAR_DAY:Ljava/lang/String; = "DAY"

.field public static final NUANCE_CALENDAR_DAY_OF_WEEK:Ljava/lang/String; = "DAY_OF_WEEK"

.field public static final NUANCE_CALENDAR_INCREMENT:Ljava/lang/String; = "INCREMENT"

.field public static final NUANCE_CALENDAR_MONTH:Ljava/lang/String; = "MONTH"

.field public static final NUANCE_CALENDAR_RANGE:Ljava/lang/String; = "CALENDAR_RANGE"

.field public static final NUANCE_CALENDAR_RANGE_END:Ljava/lang/String; = "CALENDAR_RANGE_END"

.field public static final NUANCE_CALENDAR_RANGE_START:Ljava/lang/String; = "CALENDAR_RANGE_START"

.field public static final NUANCE_CALENDAR_REFERENCE:Ljava/lang/String; = "REFERENCE"

.field public static final NUANCE_CALENDAR_STEP:Ljava/lang/String; = "STEP"

.field private static final NUANCE_CONCEPTS:Ljava/lang/String; = "concepts"

.field private static final NUANCE_DIAGNOSTIC_INFO:Ljava/lang/String; = "diagnostic_info"

.field private static final NUANCE_DURATION:Ljava/lang/String; = "DURATION"

.field private static final NUANCE_DURATION_DAYS:Ljava/lang/String; = "DAYS"

.field private static final NUANCE_DURATION_HOURS:Ljava/lang/String; = "HOURS"

.field private static final NUANCE_DURATION_MINUTES:Ljava/lang/String; = "MINUTES"

.field private static final NUANCE_GENERIC_ORDER:Ljava/lang/String; = "GENERIC_ORDER"

.field private static final NUANCE_INTENT:Ljava/lang/String; = "intent"

.field private static final NUANCE_INTERPRETATIONs:Ljava/lang/String; = "interpretations"

.field private static final NUANCE_LITERAL:Ljava/lang/String; = "literal"

.field private static final NUANCE_ORDER_PREV:Ljava/lang/String; = "prev"

.field private static final NUANCE_ORDER_SUCC:Ljava/lang/String; = "succ"

.field private static final NUANCE_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final NUANCE_QUANTITY:Ljava/lang/String; = "QUANTITY"

.field public static final NUANCE_TIME:Ljava/lang/String; = "TIME"

.field public static final NUANCE_TIME_ABS:Ljava/lang/String; = "TIME_ABS"

.field public static final NUANCE_TIME_AMPM:Ljava/lang/String; = "AMPM"

.field public static final NUANCE_TIME_HOUR:Ljava/lang/String; = "HOUR"

.field public static final NUANCE_TIME_INCREMENT:Ljava/lang/String; = "_TIMEINCREMENT"

.field public static final NUANCE_TIME_MINUTE:Ljava/lang/String; = "MINUTE"

.field public static final NUANCE_TIME_MODIFIER:Ljava/lang/String; = "MODIFIER"

.field public static final NUANCE_TIME_REL:Ljava/lang/String; = "TIME_REL"

.field public static final NUANCE_TIME_STEP:Ljava/lang/String; = "STEP"

.field private static final NUANCE_TYPE:Ljava/lang/String; = "type"

.field private static final NUANCE_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private intentConceptList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;",
            ">;"
        }
    .end annotation
.end field

.field private parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "intentConceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 80
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->intentConceptList:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method private getPreConcept(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "concepts"    # Ljava/lang/String;
    .param p2, "conceptName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 764
    const/4 v1, 0x0

    .line 765
    .local v1, "preConcept":Ljava/lang/String;
    const-string v5, "{"

    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 766
    .local v4, "start":I
    const-string v5, "ranges"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 767
    .local v2, "rangesIndex":I
    const-string v5, "}"

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 768
    .local v0, "end":I
    if-ge v4, v0, :cond_0

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .local v3, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 773
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-object v1
.end method

.method private isStringAllUppercase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 570
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 571
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    const/4 v2, 0x0

    .line 576
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 568
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private parseCALENDARX(Ljava/lang/String;)V
    .locals 3
    .param p1, "calendarx"    # Ljava/lang/String;

    .prologue
    .line 620
    if-eqz p1, :cond_0

    .line 621
    const-string v2, "DATE_ABS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    const-string v2, "MONTH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 623
    .local v1, "indexMonth":I
    const-string v2, "DAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 624
    .local v0, "indexDay":I
    if-ltz v1, :cond_0

    .line 637
    .end local v0    # "indexDay":I
    .end local v1    # "indexMonth":I
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const-string v2, "TIME_ABS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    const-string v2, "TIME_REL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    const-string v2, "DATE_REL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 633
    const-string v2, "CALENDAR_RANGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private parseCalendarxConcept(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "preConcept"    # Ljava/lang/String;

    .prologue
    .line 818
    const/4 v10, 0x0

    .line 819
    .local v10, "result":Ljava/lang/String;
    const-string v14, "DATE_REL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 820
    const-string v14, "DAY_OF_WEEK"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 821
    const-string v14, "DAY_OF_WEEK"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 822
    .local v12, "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 823
    .local v4, "end":I
    if-ge v12, v4, :cond_0

    .line 824
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .local v11, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "dayOfWeek":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 829
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DAY_OF_WEEK("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 994
    .end local v3    # "dayOfWeek":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_0
    :goto_0
    return-object v10

    .line 831
    :cond_1
    const-string v14, "STEP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 832
    const-string v14, "STEP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 833
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 834
    .restart local v4    # "end":I
    if-ge v12, v4, :cond_0

    .line 835
    const/4 v13, 0x0

    .line 836
    .local v13, "step":Ljava/lang/String;
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 837
    if-ge v12, v4, :cond_2

    .line 838
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 842
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 845
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v14, "INCREMENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 846
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 847
    if-ge v12, v4, :cond_0

    .line 848
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 852
    .local v6, "increment":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 854
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "STEP("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "INCREMENT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 859
    .end local v4    # "end":I
    .end local v6    # "increment":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    .end local v13    # "step":Ljava/lang/String;
    :cond_3
    const-string v14, "DATE_ABS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 860
    const/4 v8, 0x0

    .line 861
    .local v8, "month":Ljava/lang/String;
    const/4 v2, 0x0

    .line 862
    .local v2, "day":Ljava/lang/String;
    const-string v14, "MONTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 863
    const-string v14, "MONTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 864
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 865
    .restart local v4    # "end":I
    const/4 v8, 0x0

    .line 866
    if-ge v12, v4, :cond_4

    .line 867
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 871
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 874
    .end local v4    # "end":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_4
    const-string v14, "DAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 875
    const-string v14, "DAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 876
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 877
    .restart local v4    # "end":I
    const/4 v2, 0x0

    .line 878
    if-ge v12, v4, :cond_5

    .line 879
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 880
    const-string v14, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 881
    .local v9, "quotation":I
    if-le v9, v4, :cond_8

    .line 882
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 891
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 895
    .end local v4    # "end":I
    .end local v9    # "quotation":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_6

    .line 897
    const-string v14, "MONTH"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_6
    if-eqz v2, :cond_7

    .line 902
    const-string v14, "DAY"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 907
    goto/16 :goto_0

    .line 886
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "end":I
    .restart local v9    # "quotation":I
    .restart local v12    # "start":I
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v9, 0x1

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 907
    .end local v2    # "day":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v8    # "month":Ljava/lang/String;
    .end local v9    # "quotation":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_9
    const-string v14, "TIME_ABS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 908
    const/4 v1, 0x0

    .line 909
    .local v1, "ampm":Ljava/lang/String;
    const/4 v5, 0x0

    .line 910
    .local v5, "hour":Ljava/lang/String;
    const/4 v7, 0x0

    .line 912
    .local v7, "minute":Ljava/lang/String;
    const/4 v12, -0x1

    .line 913
    .restart local v12    # "start":I
    const/4 v4, -0x1

    .line 914
    .restart local v4    # "end":I
    const-string v14, "AMPM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 915
    const-string v14, "AMPM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 916
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 917
    if-ge v12, v4, :cond_a

    .line 918
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 922
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 926
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const-string v14, "HOUR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 927
    const-string v14, "HOUR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 928
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 929
    if-ge v12, v4, :cond_b

    .line 930
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 934
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 938
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    const-string v14, "MINUTE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 939
    const-string v14, "MINUTE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 940
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 941
    if-ge v12, v4, :cond_c

    .line 942
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 943
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 946
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 950
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_d

    .line 952
    const-string v14, "AMPM"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    :cond_d
    if-eqz v5, :cond_e

    .line 957
    const-string v14, "HOUR"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    :cond_e
    if-eqz v7, :cond_f

    .line 962
    const-string v14, "MINUTE"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 967
    goto/16 :goto_0

    .end local v1    # "ampm":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v5    # "hour":Ljava/lang/String;
    .end local v7    # "minute":Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_10
    const-string v14, "TIME_REL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 968
    const-string v14, "STEP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 969
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 970
    .restart local v4    # "end":I
    if-ge v12, v4, :cond_0

    .line 971
    const/4 v13, 0x0

    .line 972
    .restart local v13    # "step":Ljava/lang/String;
    const-string v14, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 973
    if-ge v12, v4, :cond_11

    .line 974
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x1

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 978
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 981
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    const-string v14, "INCREMENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 982
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 983
    if-ge v12, v4, :cond_0

    .line 984
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 988
    .restart local v6    # "increment":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 989
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "STEP("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_TIMEINCREMENT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private parseCalendarxConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 34
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 239
    if-eqz p1, :cond_12

    .line 241
    :try_start_0
    const-string v32, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 242
    .local v28, "value_1":Lorg/json/JSONObject;
    if-eqz v28, :cond_12

    .line 243
    const-string v32, "CALENDAR"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 244
    .local v5, "calendar":Lorg/json/JSONObject;
    if-eqz v5, :cond_12

    .line 245
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v29

    .line 246
    .local v29, "value_2":Lorg/json/JSONObject;
    if-eqz v29, :cond_12

    .line 247
    const/4 v6, 0x0

    .line 249
    .local v6, "date":Lorg/json/JSONObject;
    :try_start_1
    const-string v32, "DATE"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 253
    :goto_0
    if-eqz v6, :cond_8

    .line 254
    :try_start_2
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v30

    .line 255
    .local v30, "value_3":Lorg/json/JSONObject;
    if-eqz v30, :cond_8

    .line 256
    const/4 v8, 0x0

    .line 258
    .local v8, "date_rel":Lorg/json/JSONObject;
    :try_start_3
    const-string v32, "DATE_REL"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    .line 262
    :goto_1
    if-eqz v8, :cond_3

    .line 263
    :try_start_4
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 264
    .local v31, "value_4":Lorg/json/JSONObject;
    if-eqz v31, :cond_3

    .line 265
    const/16 v24, 0x0

    .line 266
    .local v24, "stepValue":Ljava/lang/String;
    const v16, -0x186a0

    .line 267
    .local v16, "incrementValue":I
    const/4 v9, -0x1

    .line 268
    .local v9, "day":I
    const-string v32, "INCREMENT"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 269
    .local v15, "increment":Lorg/json/JSONObject;
    if-eqz v15, :cond_0

    .line 270
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v16

    .line 273
    :cond_0
    :try_start_5
    const-string v32, "STEP"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 274
    .local v23, "step":Lorg/json/JSONObject;
    if-eqz v23, :cond_1

    .line 275
    const-string v32, "value"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v24

    .line 281
    .end local v23    # "step":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    :try_start_6
    const-string v32, "DAY_OF_WEEK"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 282
    .local v10, "dayOfWeek":Lorg/json/JSONObject;
    if-eqz v10, :cond_2

    .line 283
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v9

    .line 291
    .end local v10    # "dayOfWeek":Lorg/json/JSONObject;
    :cond_2
    :goto_3
    if-eqz v24, :cond_13

    const v32, -0x186a0

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_13

    .line 292
    :try_start_7
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "STEP("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "INCREMENT"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 294
    .local v21, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 303
    .end local v9    # "day":I
    .end local v15    # "increment":Lorg/json/JSONObject;
    .end local v16    # "incrementValue":I
    .end local v21    # "result":Ljava/lang/String;
    .end local v24    # "stepValue":Ljava/lang/String;
    .end local v31    # "value_4":Lorg/json/JSONObject;
    :cond_3
    :goto_4
    const/4 v7, 0x0

    .line 305
    .local v7, "date_abs":Lorg/json/JSONObject;
    :try_start_8
    const-string v32, "DATE_ABS"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v7

    .line 309
    :goto_5
    if-eqz v7, :cond_8

    .line 310
    :try_start_9
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v31

    .line 311
    .restart local v31    # "value_4":Lorg/json/JSONObject;
    if-eqz v31, :cond_8

    .line 312
    const/16 v20, -0x1

    .line 313
    .local v20, "monthValue":I
    const/4 v11, -0x1

    .line 314
    .local v11, "dayValue":I
    const/16 v19, 0x0

    .line 315
    .local v19, "month":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 317
    .local v9, "day":Lorg/json/JSONObject;
    :try_start_a
    const-string v32, "MONTH"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v19

    .line 322
    :goto_6
    :try_start_b
    const-string v32, "DAY"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v9

    .line 326
    :goto_7
    if-eqz v19, :cond_4

    .line 327
    :try_start_c
    const-string v32, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 330
    :cond_4
    if-eqz v9, :cond_5

    .line 331
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 334
    :cond_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v22, "sb":Ljava/lang/StringBuilder;
    const/16 v32, -0x1

    move/from16 v0, v20

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    .line 336
    const-string v32, "MONTH"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_6
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v11, v0, :cond_7

    .line 340
    const-string v32, "DAY"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 344
    .restart local v21    # "result":Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    .line 352
    .end local v7    # "date_abs":Lorg/json/JSONObject;
    .end local v8    # "date_rel":Lorg/json/JSONObject;
    .end local v9    # "day":Lorg/json/JSONObject;
    .end local v11    # "dayValue":I
    .end local v19    # "month":Lorg/json/JSONObject;
    .end local v20    # "monthValue":I
    .end local v21    # "result":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .end local v30    # "value_3":Lorg/json/JSONObject;
    .end local v31    # "value_4":Lorg/json/JSONObject;
    :cond_8
    const/16 v25, 0x0

    .line 354
    .local v25, "time":Lorg/json/JSONObject;
    :try_start_d
    const-string v32, "TIME"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_8

    move-result-object v25

    .line 358
    :goto_8
    if-eqz v25, :cond_12

    .line 359
    :try_start_e
    const-string v32, "value"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v30

    .line 360
    .restart local v30    # "value_3":Lorg/json/JSONObject;
    if-eqz v30, :cond_12

    .line 361
    const/16 v27, 0x0

    .line 363
    .local v27, "time_rel":Lorg/json/JSONObject;
    :try_start_f
    const-string v32, "TIME_REL"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_9

    move-result-object v27

    .line 367
    :goto_9
    if-eqz v27, :cond_b

    .line 368
    :try_start_10
    const-string v32, "value"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 369
    .restart local v31    # "value_4":Lorg/json/JSONObject;
    if-eqz v31, :cond_b

    .line 370
    const/16 v24, 0x0

    .line 371
    .restart local v24    # "stepValue":Ljava/lang/String;
    const v16, -0x186a0

    .line 372
    .restart local v16    # "incrementValue":I
    const-string v32, "INCREMENT"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 373
    .restart local v15    # "increment":Lorg/json/JSONObject;
    if-eqz v15, :cond_9

    .line 374
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1

    move-result v16

    .line 377
    :cond_9
    :try_start_11
    const-string v32, "STEP"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 378
    .restart local v23    # "step":Lorg/json/JSONObject;
    if-eqz v23, :cond_a

    .line 379
    const-string v32, "value"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_a

    move-result-object v24

    .line 385
    .end local v23    # "step":Lorg/json/JSONObject;
    :cond_a
    :goto_a
    if-eqz v24, :cond_b

    const v32, -0x186a0

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 386
    :try_start_12
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "STEP("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "INCREMENT"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 388
    .restart local v21    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1

    .line 393
    .end local v15    # "increment":Lorg/json/JSONObject;
    .end local v16    # "incrementValue":I
    .end local v21    # "result":Ljava/lang/String;
    .end local v24    # "stepValue":Ljava/lang/String;
    .end local v31    # "value_4":Lorg/json/JSONObject;
    :cond_b
    const/16 v26, 0x0

    .line 395
    .local v26, "time_abs":Lorg/json/JSONObject;
    :try_start_13
    const-string v32, "TIME_ABS"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_b

    move-result-object v26

    .line 399
    :goto_b
    if-eqz v26, :cond_12

    .line 400
    :try_start_14
    const-string v32, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1

    move-result-object v31

    .line 401
    .restart local v31    # "value_4":Lorg/json/JSONObject;
    if-eqz v31, :cond_12

    .line 402
    const/4 v4, 0x0

    .line 403
    .local v4, "ampmValue":Ljava/lang/String;
    const/4 v14, -0x1

    .line 404
    .local v14, "hourValue":I
    const/16 v18, -0x1

    .line 405
    .local v18, "minuteValue":I
    const/4 v3, 0x0

    .line 406
    .local v3, "ampm":Lorg/json/JSONObject;
    const/4 v13, 0x0

    .line 407
    .local v13, "hour":Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 409
    .local v17, "minute":Lorg/json/JSONObject;
    :try_start_15
    const-string v32, "AMPM"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_c

    move-result-object v3

    .line 414
    :goto_c
    :try_start_16
    const-string v32, "HOUR"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_d

    move-result-object v13

    .line 419
    :goto_d
    :try_start_17
    const-string v32, "MINUTE"

    invoke-virtual/range {v31 .. v32}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_e

    move-result-object v17

    .line 423
    :goto_e
    if-eqz v3, :cond_c

    .line 424
    :try_start_18
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 426
    :cond_c
    if-eqz v13, :cond_d

    .line 427
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 429
    :cond_d
    if-eqz v17, :cond_e

    .line 430
    const-string v32, "value"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 433
    :cond_e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_f

    .line 435
    const-string v32, "AMPM"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_f
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v14, v0, :cond_10

    .line 439
    const-string v32, "HOUR"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_10
    const/16 v32, -0x1

    move/from16 v0, v18

    move/from16 v1, v32

    if-eq v0, v1, :cond_11

    .line 443
    const-string v32, "MINUTE"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 447
    .restart local v21    # "result":Ljava/lang/String;
    if-eqz v21, :cond_12

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .end local v3    # "ampm":Lorg/json/JSONObject;
    .end local v4    # "ampmValue":Ljava/lang/String;
    .end local v5    # "calendar":Lorg/json/JSONObject;
    .end local v6    # "date":Lorg/json/JSONObject;
    .end local v13    # "hour":Lorg/json/JSONObject;
    .end local v14    # "hourValue":I
    .end local v17    # "minute":Lorg/json/JSONObject;
    .end local v18    # "minuteValue":I
    .end local v21    # "result":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .end local v25    # "time":Lorg/json/JSONObject;
    .end local v26    # "time_abs":Lorg/json/JSONObject;
    .end local v27    # "time_rel":Lorg/json/JSONObject;
    .end local v28    # "value_1":Lorg/json/JSONObject;
    .end local v29    # "value_2":Lorg/json/JSONObject;
    .end local v30    # "value_3":Lorg/json/JSONObject;
    .end local v31    # "value_4":Lorg/json/JSONObject;
    :cond_12
    :goto_f
    return-void

    .line 250
    .restart local v5    # "calendar":Lorg/json/JSONObject;
    .restart local v6    # "date":Lorg/json/JSONObject;
    .restart local v28    # "value_1":Lorg/json/JSONObject;
    .restart local v29    # "value_2":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 251
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1

    goto/16 :goto_0

    .line 457
    .end local v5    # "calendar":Lorg/json/JSONObject;
    .end local v6    # "date":Lorg/json/JSONObject;
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v28    # "value_1":Lorg/json/JSONObject;
    .end local v29    # "value_2":Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    .line 458
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f

    .line 259
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v5    # "calendar":Lorg/json/JSONObject;
    .restart local v6    # "date":Lorg/json/JSONObject;
    .restart local v8    # "date_rel":Lorg/json/JSONObject;
    .restart local v28    # "value_1":Lorg/json/JSONObject;
    .restart local v29    # "value_2":Lorg/json/JSONObject;
    .restart local v30    # "value_3":Lorg/json/JSONObject;
    :catch_2
    move-exception v12

    .line 260
    .restart local v12    # "e":Lorg/json/JSONException;
    :try_start_19
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 277
    .end local v12    # "e":Lorg/json/JSONException;
    .local v9, "day":I
    .restart local v15    # "increment":Lorg/json/JSONObject;
    .restart local v16    # "incrementValue":I
    .restart local v24    # "stepValue":Ljava/lang/String;
    .restart local v31    # "value_4":Lorg/json/JSONObject;
    :catch_3
    move-exception v12

    .line 278
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 285
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v12

    .line 286
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 295
    .end local v12    # "e":Lorg/json/JSONException;
    :cond_13
    const v32, -0x186a0

    move/from16 v0, v16

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v9, v0, :cond_3

    .line 296
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "DAY_OF_WEEK("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ")"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 297
    .restart local v21    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 306
    .end local v9    # "day":I
    .end local v15    # "increment":Lorg/json/JSONObject;
    .end local v16    # "incrementValue":I
    .end local v21    # "result":Ljava/lang/String;
    .end local v24    # "stepValue":Ljava/lang/String;
    .end local v31    # "value_4":Lorg/json/JSONObject;
    .restart local v7    # "date_abs":Lorg/json/JSONObject;
    :catch_5
    move-exception v12

    .line 307
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 318
    .end local v12    # "e":Lorg/json/JSONException;
    .local v9, "day":Lorg/json/JSONObject;
    .restart local v11    # "dayValue":I
    .restart local v19    # "month":Lorg/json/JSONObject;
    .restart local v20    # "monthValue":I
    .restart local v31    # "value_4":Lorg/json/JSONObject;
    :catch_6
    move-exception v12

    .line 319
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6

    .line 323
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_7
    move-exception v12

    .line 324
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 355
    .end local v7    # "date_abs":Lorg/json/JSONObject;
    .end local v8    # "date_rel":Lorg/json/JSONObject;
    .end local v9    # "day":Lorg/json/JSONObject;
    .end local v11    # "dayValue":I
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v19    # "month":Lorg/json/JSONObject;
    .end local v20    # "monthValue":I
    .end local v30    # "value_3":Lorg/json/JSONObject;
    .end local v31    # "value_4":Lorg/json/JSONObject;
    .restart local v25    # "time":Lorg/json/JSONObject;
    :catch_8
    move-exception v12

    .line 356
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 364
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v27    # "time_rel":Lorg/json/JSONObject;
    .restart local v30    # "value_3":Lorg/json/JSONObject;
    :catch_9
    move-exception v12

    .line 365
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_9

    .line 381
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v15    # "increment":Lorg/json/JSONObject;
    .restart local v16    # "incrementValue":I
    .restart local v24    # "stepValue":Ljava/lang/String;
    .restart local v31    # "value_4":Lorg/json/JSONObject;
    :catch_a
    move-exception v12

    .line 382
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_a

    .line 396
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v15    # "increment":Lorg/json/JSONObject;
    .end local v16    # "incrementValue":I
    .end local v24    # "stepValue":Ljava/lang/String;
    .end local v31    # "value_4":Lorg/json/JSONObject;
    .restart local v26    # "time_abs":Lorg/json/JSONObject;
    :catch_b
    move-exception v12

    .line 397
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_b

    .line 410
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v3    # "ampm":Lorg/json/JSONObject;
    .restart local v4    # "ampmValue":Ljava/lang/String;
    .restart local v13    # "hour":Lorg/json/JSONObject;
    .restart local v14    # "hourValue":I
    .restart local v17    # "minute":Lorg/json/JSONObject;
    .restart local v18    # "minuteValue":I
    .restart local v31    # "value_4":Lorg/json/JSONObject;
    :catch_c
    move-exception v12

    .line 411
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_c

    .line 415
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_d
    move-exception v12

    .line 416
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d

    .line 420
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_e
    move-exception v12

    .line 421
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_1

    goto/16 :goto_e
.end method

.method private parseConcept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 692
    const/4 v11, 0x0

    .line 693
    .local v11, "intentValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 694
    .local v6, "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->intentConceptList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 695
    .local v12, "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    invoke-virtual {v12}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getDomain()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 696
    invoke-virtual {v12}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v6

    .line 701
    .end local v12    # "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    :cond_1
    if-nez v6, :cond_3

    .line 761
    :cond_2
    return-void

    .line 705
    :cond_3
    const-string v22, "concepts"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 706
    .local v19, "start":I
    const-string v22, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 707
    .local v9, "end":I
    const/4 v8, 0x0

    .line 708
    .local v8, "concepts":Ljava/lang/String;
    move/from16 v0, v19

    if-le v9, v0, :cond_4

    .line 709
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 710
    .local v18, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v22, v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 714
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v7, 0x0

    .line 715
    .local v7, "conceptValue":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 716
    .local v12, "item":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 717
    .local v10, "index":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-le v10, v0, :cond_5

    .line 718
    const-string v23, "CALENDARX"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "GENERIC_ORDER"

    .line 719
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 720
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v10}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->getPreConcept(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 721
    .local v15, "preConcept":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parsePreConcept(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    .end local v15    # "preConcept":Ljava/lang/String;
    :cond_7
    const-string v23, "{"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 724
    .local v4, "blankStart":I
    const-string v23, "}"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 725
    .local v3, "blankEnd":I
    if-ge v4, v3, :cond_5

    .line 726
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v23, v3, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 730
    .local v5, "conceptContent":Ljava/lang/String;
    const-string v23, "value"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 731
    .local v21, "valueStart":I
    const-string v23, "ranges"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 732
    .local v16, "rangesStart":I
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 733
    const-string v23, ","

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v20

    .line 734
    .local v20, "valueEnd":I
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 735
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    .local v17, "sBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v23, v21, 0x8

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 739
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 744
    .end local v17    # "sBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "valueEnd":I
    :cond_8
    const-string v23, "literal"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 745
    .local v14, "literalStart":I
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 746
    .local v13, "literalEnd":I
    if-ge v14, v13, :cond_5

    .line 747
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    .restart local v17    # "sBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v23, v14, 0x9

    move/from16 v0, v23

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 751
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private parseConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 16
    .param p1, "concepts"    # Lorg/json/JSONObject;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v6, 0x0

    .line 171
    .local v6, "intentValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 172
    .local v2, "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->intentConceptList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 173
    .local v7, "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getDomain()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 174
    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v2

    .line 179
    .end local v7    # "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    :cond_1
    if-nez v2, :cond_3

    .line 236
    :cond_2
    return-void

    .line 183
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 185
    .local v7, "item":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 186
    .local v1, "concept":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 187
    const-string v15, "value"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 188
    .local v10, "value_1":Lorg/json/JSONArray;
    if-eqz v10, :cond_4

    .line 189
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 190
    .local v11, "value_2":Lorg/json/JSONObject;
    if-eqz v11, :cond_4

    .line 191
    const/4 v5, 0x0

    .line 192
    .local v5, "hasGetConcept":Z
    const-string v15, "value"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 193
    .local v12, "value_3":Lorg/json/JSONObject;
    if-eqz v12, :cond_4

    .line 194
    const/4 v13, 0x0

    .line 196
    .local v13, "value_4":Lorg/json/JSONObject;
    :try_start_1
    const-string v15, "value"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 200
    :goto_1
    if-eqz v13, :cond_5

    .line 201
    :try_start_2
    const-string v15, "CALENDARX"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseCalendarxConcept(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 203
    const/4 v5, 0x1

    .line 219
    :cond_5
    :goto_2
    if-nez v5, :cond_4

    .line 220
    const-string v15, "literal"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 221
    .local v8, "literal":Lorg/json/JSONObject;
    if-eqz v8, :cond_4

    .line 222
    const-string v15, "value"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "concept_value":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v15}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 232
    .end local v1    # "concept":Lorg/json/JSONObject;
    .end local v3    # "concept_value":Ljava/lang/String;
    .end local v5    # "hasGetConcept":Z
    .end local v8    # "literal":Lorg/json/JSONObject;
    .end local v10    # "value_1":Lorg/json/JSONArray;
    .end local v11    # "value_2":Lorg/json/JSONObject;
    .end local v12    # "value_3":Lorg/json/JSONObject;
    .end local v13    # "value_4":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 233
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v1    # "concept":Lorg/json/JSONObject;
    .restart local v5    # "hasGetConcept":Z
    .restart local v10    # "value_1":Lorg/json/JSONArray;
    .restart local v11    # "value_2":Lorg/json/JSONObject;
    .restart local v12    # "value_3":Lorg/json/JSONObject;
    .restart local v13    # "value_4":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    .line 198
    .restart local v4    # "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 204
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_6
    const-string v15, "GENERIC_ORDER"

    invoke-virtual {v7, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 205
    const-string v15, "value"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "order":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v15}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v5, 0x1

    goto :goto_2

    .line 211
    .end local v9    # "order":Ljava/lang/String;
    :cond_7
    const-string v15, "value"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .restart local v3    # "concept_value":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v15}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 214
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private parseDiagnos(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "diagnos"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

    .line 107
    .local v0, "resultDiagnosticInfo":Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;
    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 109
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->getTiming()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->getFinalRespSentDelay()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setFinalRespSentDelay(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 111
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->getTiming()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->getIntermediateRespSentDelay()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setIntermediateRespSentDelay(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method private parseGenericOrderConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 466
    :try_start_0
    const-string v5, "value"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 467
    .local v3, "value_1":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 468
    const-string v5, "GENERIC_ORDER"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 469
    .local v0, "calendar":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 470
    const-string v5, "value"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 471
    .local v4, "value_2":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 472
    const/4 v1, 0x0

    .line 474
    .local v1, "date":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "DATE"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 478
    :goto_0
    if-eqz v1, :cond_0

    .line 489
    .end local v0    # "calendar":Lorg/json/JSONObject;
    .end local v1    # "date":Lorg/json/JSONObject;
    .end local v3    # "value_1":Lorg/json/JSONObject;
    .end local v4    # "value_2":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 475
    .restart local v0    # "calendar":Lorg/json/JSONObject;
    .restart local v1    # "date":Lorg/json/JSONObject;
    .restart local v3    # "value_1":Lorg/json/JSONObject;
    .restart local v4    # "value_2":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 476
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 484
    .end local v0    # "calendar":Lorg/json/JSONObject;
    .end local v1    # "date":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "value_1":Lorg/json/JSONObject;
    .end local v4    # "value_2":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 485
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private parseIntent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 661
    const/4 v2, 0x0

    .line 663
    .local v2, "intentValue":Ljava/lang/String;
    const-string v6, "intent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 664
    .local v5, "start":I
    const/4 v0, 0x0

    .line 665
    .local v0, "end":I
    if-lez v5, :cond_2

    .line 666
    const-string v6, "}"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "intent":Ljava/lang/String;
    if-le v0, v5, :cond_0

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .local v4, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v5, 0x9

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 677
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz v1, :cond_1

    .line 678
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 679
    if-lez v5, :cond_1

    .line 680
    const-string v6, ","

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 681
    if-lez v0, :cond_1

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    move-object v3, v2

    .line 688
    .end local v1    # "intent":Ljava/lang/String;
    .end local v2    # "intentValue":Ljava/lang/String;
    .local v3, "intentValue":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "intentValue":Ljava/lang/String;
    .restart local v2    # "intentValue":Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 668
    .end local v2    # "intentValue":Ljava/lang/String;
    .restart local v3    # "intentValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private parseInterpretations(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "interArray"    # Lorg/json/JSONArray;

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 494
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 495
    .local v3, "inter":Lorg/json/JSONObject;
    const-string v6, "action"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 496
    .local v0, "actionJSONObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v6

    .line 497
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

    .line 496
    invoke-virtual {v6, v7, v8}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

    .line 498
    .local v4, "resultAction":Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;
    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;->getIntent()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "intent":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "strs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 501
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 502
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;->getIntent()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->getConfidence()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setConfidence(F)V

    .line 503
    const-string v6, "concepts"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v0    # "actionJSONObject":Lorg/json/JSONObject;
    .end local v2    # "intent":Ljava/lang/String;
    .end local v3    # "inter":Lorg/json/JSONObject;
    .end local v4    # "resultAction":Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;
    .end local v5    # "strs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseInterpretations(Lorg/json/JSONObject;)V
    .locals 16
    .param p1, "interResult"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    if-eqz p1, :cond_1

    .line 118
    :try_start_0
    const-string v14, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 119
    .local v8, "value_1":Lorg/json/JSONArray;
    if-eqz v8, :cond_1

    .line 120
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 121
    .local v9, "value_2":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, "domain":Ljava/lang/String;
    const-string v14, "value"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 124
    .local v10, "value_3":Lorg/json/JSONObject;
    if-eqz v10, :cond_0

    .line 125
    const-string v14, "action"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 126
    .local v1, "action":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 127
    const-string v14, "value"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 128
    .local v11, "value_4":Lorg/json/JSONObject;
    if-eqz v11, :cond_0

    .line 129
    const-string v14, "intent"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 130
    .local v6, "intent":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 131
    const-string v14, "value"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 132
    .local v12, "value_5":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 133
    const-string v14, "value"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 134
    .local v13, "value_6":Lorg/json/JSONObject;
    if-eqz v13, :cond_0

    .line 135
    const-string v14, "value"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "in":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 137
    const-string v14, "_"

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "strs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v15, 0x0

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v15, 0x1

    aget-object v15, v7, v15

    invoke-virtual {v14, v15}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setSentence(Ljava/lang/String;)V

    .line 141
    const/4 v14, 0x0

    aget-object v3, v7, v14

    .line 152
    .end local v1    # "action":Lorg/json/JSONObject;
    .end local v5    # "in":Ljava/lang/String;
    .end local v6    # "intent":Lorg/json/JSONObject;
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v11    # "value_4":Lorg/json/JSONObject;
    .end local v12    # "value_5":Lorg/json/JSONObject;
    .end local v13    # "value_6":Lorg/json/JSONObject;
    :cond_0
    const-string v14, "concepts"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 153
    .local v2, "concepts":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 154
    const-string v14, "value"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 155
    .restart local v11    # "value_4":Lorg/json/JSONObject;
    if-eqz v11, :cond_1

    .line 156
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2    # "concepts":Lorg/json/JSONObject;
    .end local v3    # "domain":Ljava/lang/String;
    .end local v8    # "value_1":Lorg/json/JSONArray;
    .end local v9    # "value_2":Lorg/json/JSONObject;
    .end local v10    # "value_3":Lorg/json/JSONObject;
    .end local v11    # "value_4":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v4

    .line 164
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parsePreConcept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "preConcept"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 777
    const-string v6, "CALENDARX"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 778
    const-string v6, "CALENDAR_RANGE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 779
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseCalendarxConcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const/4 v2, 0x0

    .line 783
    .restart local v2    # "result":Ljava/lang/String;
    const/4 v5, 0x0

    .line 784
    .local v5, "subResult":Ljava/lang/String;
    const-string v6, "CALENDAR_RANGE_START"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 785
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseCalendarxConcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    :cond_2
    const-string v6, "CALENDAR_RANGE_END"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 788
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseCalendarxConcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 791
    :cond_3
    if-eqz v2, :cond_0

    .line 792
    if-eqz v5, :cond_4

    .line 793
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALENDAR_RANGE_START:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CALENDAR_RANGE_END"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 796
    :cond_4
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CALENDAR_RANGE_START:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 800
    .end local v2    # "result":Ljava/lang/String;
    .end local v5    # "subResult":Ljava/lang/String;
    :cond_5
    const-string v6, "GENERIC_ORDER"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 801
    const/4 v2, 0x0

    .line 802
    .restart local v2    # "result":Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 803
    const-string v6, "value"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 804
    .local v4, "start":I
    const-string v6, ","

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 805
    .local v0, "end":I
    if-ge v4, v0, :cond_0

    .line 806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    .local v3, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v4, 0x7

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "order":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 811
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private parsePreConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10
    .param p1, "conceptObject"    # Lorg/json/JSONObject;
    .param p2, "conceptName"    # Ljava/lang/String;

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 582
    :try_start_0
    const-string v7, "value"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 584
    .local v6, "valueObject":Lorg/json/JSONObject;
    const-string v7, "CALENDARX"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 585
    if-eqz v6, :cond_0

    .line 586
    const-string v7, "CALENDAR"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 587
    const-string v7, "CALENDAR"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 588
    .local v0, "calendarObject":Lorg/json/JSONObject;
    const-string v7, "DATE"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 589
    const-string v7, "DATE"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 590
    .local v1, "dateObject":Lorg/json/JSONObject;
    const-string v7, "DATE_REL"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 591
    const-string v7, "DATE_REL"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 592
    .local v2, "dateRelObject":Lorg/json/JSONObject;
    const-string v7, "DAY_OF_WEEK"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 593
    const-string v7, "DAY_OF_WEEK"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 594
    .local v3, "dayOfWeek":I
    const-string v7, "INCREMENT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 595
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DAY_OF_WEEK("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    .end local v0    # "calendarObject":Lorg/json/JSONObject;
    .end local v1    # "dateObject":Lorg/json/JSONObject;
    .end local v2    # "dateRelObject":Lorg/json/JSONObject;
    .end local v3    # "dayOfWeek":I
    .end local v6    # "valueObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 598
    .restart local v0    # "calendarObject":Lorg/json/JSONObject;
    .restart local v1    # "dateObject":Lorg/json/JSONObject;
    .restart local v2    # "dateRelObject":Lorg/json/JSONObject;
    .restart local v6    # "valueObject":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "INCREMENT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 599
    const-string v7, "INCREMENT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 600
    .local v5, "increment":I
    const-string v7, "day"

    const-string v8, "STEP"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 601
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INCREMENT("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    .end local v0    # "calendarObject":Lorg/json/JSONObject;
    .end local v1    # "dateObject":Lorg/json/JSONObject;
    .end local v2    # "dateRelObject":Lorg/json/JSONObject;
    .end local v5    # "increment":I
    .end local v6    # "valueObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 614
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 609
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v6    # "valueObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v7, "CALENDARX"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getParseResult()Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    return-object v0
.end method

.method public parseJson(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 86
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v3    # "json":Lorg/json/JSONObject;
    .local v4, "json":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 88
    :try_start_1
    const-string v9, "value"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 89
    .local v6, "value_1":Lorg/json/JSONObject;
    const-string v9, "nlu_interpretation_results"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 90
    .local v2, "interResult":Lorg/json/JSONObject;
    const-string v9, "value"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 91
    .local v7, "value_2":Lorg/json/JSONObject;
    const-string v9, "payload"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 92
    .local v5, "payload":Lorg/json/JSONObject;
    const-string v9, "value"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 93
    .local v8, "value_3":Lorg/json/JSONObject;
    const-string v9, "interpretations"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 95
    .local v1, "inter":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseInterpretations(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "inter":Lorg/json/JSONObject;
    .end local v2    # "interResult":Lorg/json/JSONObject;
    .end local v5    # "payload":Lorg/json/JSONObject;
    .end local v6    # "value_1":Lorg/json/JSONObject;
    .end local v7    # "value_2":Lorg/json/JSONObject;
    .end local v8    # "value_3":Lorg/json/JSONObject;
    :cond_0
    move-object v3, v4

    .line 102
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public parseJson(Ljava/lang/String;I)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "x"    # I

    .prologue
    const/4 v4, 0x0

    .line 644
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "intent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 646
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "strs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 649
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v3, p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setSentence(Ljava/lang/String;)V

    .line 651
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-direct {p0, p1, v3}, Lcom/ubtechinc/alphaenglishchat/util/NLUResultParse;->parseConcept(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 652
    .restart local v2    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
