.class public Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;
.super Ljava/lang/Object;
.source "NewNLUResultParse.java"


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
    .line 72
    .local p1, "intentConceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 74
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->intentConceptList:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method private getIntent(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7
    .param p1, "intent_value"    # Lorg/json/JSONObject;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "domain":Ljava/lang/String;
    const/4 v3, 0x0

    .line 204
    .local v3, "in":Ljava/lang/String;
    :try_start_0
    const-string v4, "value"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 208
    :goto_0
    if-eqz v3, :cond_0

    .line 210
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 211
    .local v2, "idx":I
    if-lez v2, :cond_0

    .line 212
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v4, v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 214
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setSentence(Ljava/lang/String;)V

    .line 220
    .end local v2    # "idx":I
    :cond_0
    return-object v0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseCalendarxConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 22
    .param p1, "calendarx"    # Lorg/json/JSONObject;
    .param p2, "concept_name"    # Ljava/lang/String;

    .prologue
    .line 277
    :try_start_0
    const-string v20, "value"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v19

    .line 289
    .local v19, "value":Lorg/json/JSONObject;
    :try_start_1
    const-string v20, "CALENDAR"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 290
    .local v4, "calendar":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 291
    .local v5, "date":Lorg/json/JSONObject;
    const/16 v16, 0x0

    .line 293
    .local v16, "time":Lorg/json/JSONObject;
    :try_start_2
    const-string v20, "DATE"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_11

    move-result-object v5

    .line 298
    :goto_0
    :try_start_3
    const-string v20, "TIME"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_10

    move-result-object v16

    .line 303
    :goto_1
    if-eqz v5, :cond_5

    .line 305
    :try_start_4
    const-string v20, "DATE_REL"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v7

    .line 306
    .local v7, "date_rel":Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 307
    .local v15, "stepValue":Ljava/lang/String;
    const v11, -0x186a0

    .line 308
    .local v11, "incrementValue":I
    const/4 v8, -0x1

    .line 310
    .local v8, "day_of_week":I
    :try_start_5
    const-string v20, "INCREMENT"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_f

    move-result v11

    .line 315
    :goto_2
    :try_start_6
    const-string v20, "DAY_OF_WEEK"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_e

    move-result v8

    .line 320
    :goto_3
    :try_start_7
    const-string v20, "STEP"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_d

    move-result-object v15

    .line 325
    :goto_4
    if-eqz v15, :cond_3

    const v20, -0x186a0

    move/from16 v0, v20

    if-eq v11, v0, :cond_3

    .line 326
    :try_start_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "STEP("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "INCREMENT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 348
    .end local v7    # "date_rel":Lorg/json/JSONObject;
    .end local v8    # "day_of_week":I
    .end local v11    # "incrementValue":I
    .end local v14    # "result":Ljava/lang/String;
    .end local v15    # "stepValue":Ljava/lang/String;
    :cond_0
    :goto_5
    :try_start_9
    const-string v20, "DATE_ABS"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_a

    move-result-object v6

    .line 350
    .local v6, "date_abs":Lorg/json/JSONObject;
    :try_start_a
    const-string v20, "DAY"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_c

    .line 355
    :goto_6
    :try_start_b
    const-string v20, "MONTH"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 440
    .end local v4    # "calendar":Lorg/json/JSONObject;
    .end local v5    # "date":Lorg/json/JSONObject;
    .end local v6    # "date_abs":Lorg/json/JSONObject;
    .end local v16    # "time":Lorg/json/JSONObject;
    .end local v19    # "value":Lorg/json/JSONObject;
    :cond_1
    :goto_7
    return-void

    .line 331
    .restart local v4    # "calendar":Lorg/json/JSONObject;
    .restart local v5    # "date":Lorg/json/JSONObject;
    .restart local v7    # "date_rel":Lorg/json/JSONObject;
    .restart local v8    # "day_of_week":I
    .restart local v11    # "incrementValue":I
    .restart local v14    # "result":Ljava/lang/String;
    .restart local v15    # "stepValue":Ljava/lang/String;
    .restart local v16    # "time":Lorg/json/JSONObject;
    .restart local v19    # "value":Lorg/json/JSONObject;
    :cond_2
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 332
    .local v13, "preResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 343
    .end local v7    # "date_rel":Lorg/json/JSONObject;
    .end local v8    # "day_of_week":I
    .end local v11    # "incrementValue":I
    .end local v13    # "preResult":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/String;
    .end local v15    # "stepValue":Ljava/lang/String;
    :catch_0
    move-exception v20

    goto :goto_5

    .line 334
    .restart local v7    # "date_rel":Lorg/json/JSONObject;
    .restart local v8    # "day_of_week":I
    .restart local v11    # "incrementValue":I
    .restart local v15    # "stepValue":Ljava/lang/String;
    :cond_3
    const v20, -0x186a0

    move/from16 v0, v20

    if-eq v11, v0, :cond_0

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_0

    .line 335
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DAY_OF_WEEK("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 336
    .restart local v14    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 339
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 340
    .restart local v13    # "preResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_5

    .line 362
    .end local v7    # "date_rel":Lorg/json/JSONObject;
    .end local v8    # "day_of_week":I
    .end local v11    # "incrementValue":I
    .end local v13    # "preResult":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/String;
    .end local v15    # "stepValue":Ljava/lang/String;
    :cond_5
    if-eqz v16, :cond_1

    .line 364
    :try_start_d
    const-string v20, "TIME_REL"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2

    move-result-object v18

    .line 365
    .local v18, "time_rel":Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 366
    .restart local v15    # "stepValue":Ljava/lang/String;
    const v11, -0x186a0

    .line 368
    .restart local v11    # "incrementValue":I
    :try_start_e
    const-string v20, "INCREMENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_9

    move-result v11

    .line 373
    :goto_8
    :try_start_f
    const-string v20, "STEP"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_8

    move-result-object v15

    .line 378
    :goto_9
    if-eqz v15, :cond_6

    const v20, -0x186a0

    move/from16 v0, v20

    if-eq v11, v0, :cond_6

    .line 379
    :try_start_10
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "STEP("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "INCREMENT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 381
    .restart local v14    # "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_2

    .line 393
    .end local v11    # "incrementValue":I
    .end local v14    # "result":Ljava/lang/String;
    .end local v15    # "stepValue":Ljava/lang/String;
    .end local v18    # "time_rel":Lorg/json/JSONObject;
    :cond_6
    :goto_a
    :try_start_11
    const-string v20, "TIME_ABS"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_1

    move-result-object v17

    .line 394
    .local v17, "time_abs":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 395
    .local v3, "ampm":Ljava/lang/String;
    const/16 v10, -0x64

    .line 396
    .local v10, "hour":I
    const/16 v12, -0x64

    .line 398
    .local v12, "minute":I
    :try_start_12
    const-string v20, "AMPM"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_7

    move-result-object v3

    .line 403
    :goto_b
    :try_start_13
    const-string v20, "HOUR"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_6

    move-result v10

    .line 408
    :goto_c
    :try_start_14
    const-string v20, "MINUTE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_5

    move-result v12

    .line 413
    :goto_d
    const/4 v14, 0x0

    .line 414
    .restart local v14    # "result":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 415
    :try_start_15
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "AMPM("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 417
    :cond_7
    const/16 v20, -0x64

    move/from16 v0, v20

    if-eq v10, v0, :cond_8

    .line 418
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "HOUR"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 420
    :cond_8
    const/16 v20, -0x64

    move/from16 v0, v20

    if-eq v12, v0, :cond_9

    .line 421
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "MINUTE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 423
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_7

    .line 429
    .end local v3    # "ampm":Ljava/lang/String;
    .end local v10    # "hour":I
    .end local v12    # "minute":I
    .end local v14    # "result":Ljava/lang/String;
    .end local v17    # "time_abs":Lorg/json/JSONObject;
    :catch_1
    move-exception v20

    goto/16 :goto_7

    .line 384
    .restart local v11    # "incrementValue":I
    .restart local v14    # "result":Ljava/lang/String;
    .restart local v15    # "stepValue":Ljava/lang/String;
    .restart local v18    # "time_rel":Lorg/json/JSONObject;
    :cond_a
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 385
    .restart local v13    # "preResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_2

    goto/16 :goto_a

    .line 388
    .end local v11    # "incrementValue":I
    .end local v13    # "preResult":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/String;
    .end local v15    # "stepValue":Ljava/lang/String;
    .end local v18    # "time_rel":Lorg/json/JSONObject;
    :catch_2
    move-exception v20

    goto/16 :goto_a

    .line 426
    .restart local v3    # "ampm":Ljava/lang/String;
    .restart local v10    # "hour":I
    .restart local v12    # "minute":I
    .restart local v14    # "result":Ljava/lang/String;
    .restart local v17    # "time_abs":Lorg/json/JSONObject;
    :cond_b
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 427
    .restart local v13    # "preResult":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_7

    .line 434
    .end local v3    # "ampm":Ljava/lang/String;
    .end local v4    # "calendar":Lorg/json/JSONObject;
    .end local v5    # "date":Lorg/json/JSONObject;
    .end local v10    # "hour":I
    .end local v12    # "minute":I
    .end local v13    # "preResult":Ljava/lang/String;
    .end local v14    # "result":Ljava/lang/String;
    .end local v16    # "time":Lorg/json/JSONObject;
    .end local v17    # "time_abs":Lorg/json/JSONObject;
    :catch_3
    move-exception v9

    .line 435
    .local v9, "e":Lorg/json/JSONException;
    :try_start_18
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_4

    goto/16 :goto_7

    .line 437
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v19    # "value":Lorg/json/JSONObject;
    :catch_4
    move-exception v9

    .line 438
    .restart local v9    # "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 409
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v3    # "ampm":Ljava/lang/String;
    .restart local v4    # "calendar":Lorg/json/JSONObject;
    .restart local v5    # "date":Lorg/json/JSONObject;
    .restart local v10    # "hour":I
    .restart local v12    # "minute":I
    .restart local v16    # "time":Lorg/json/JSONObject;
    .restart local v17    # "time_abs":Lorg/json/JSONObject;
    .restart local v19    # "value":Lorg/json/JSONObject;
    :catch_5
    move-exception v20

    goto/16 :goto_d

    .line 404
    :catch_6
    move-exception v20

    goto/16 :goto_c

    .line 399
    :catch_7
    move-exception v20

    goto/16 :goto_b

    .line 374
    .end local v3    # "ampm":Ljava/lang/String;
    .end local v10    # "hour":I
    .end local v12    # "minute":I
    .end local v17    # "time_abs":Lorg/json/JSONObject;
    .restart local v11    # "incrementValue":I
    .restart local v15    # "stepValue":Ljava/lang/String;
    .restart local v18    # "time_rel":Lorg/json/JSONObject;
    :catch_8
    move-exception v20

    goto/16 :goto_9

    .line 369
    :catch_9
    move-exception v20

    goto/16 :goto_8

    .line 359
    .end local v11    # "incrementValue":I
    .end local v15    # "stepValue":Ljava/lang/String;
    .end local v18    # "time_rel":Lorg/json/JSONObject;
    :catch_a
    move-exception v20

    goto/16 :goto_7

    .line 356
    .restart local v6    # "date_abs":Lorg/json/JSONObject;
    :catch_b
    move-exception v20

    goto/16 :goto_7

    .line 351
    :catch_c
    move-exception v20

    goto/16 :goto_6

    .line 321
    .end local v6    # "date_abs":Lorg/json/JSONObject;
    .restart local v7    # "date_rel":Lorg/json/JSONObject;
    .restart local v8    # "day_of_week":I
    .restart local v11    # "incrementValue":I
    .restart local v15    # "stepValue":Ljava/lang/String;
    :catch_d
    move-exception v20

    goto/16 :goto_4

    .line 316
    :catch_e
    move-exception v20

    goto/16 :goto_3

    .line 311
    :catch_f
    move-exception v20

    goto/16 :goto_2

    .line 299
    .end local v7    # "date_rel":Lorg/json/JSONObject;
    .end local v8    # "day_of_week":I
    .end local v11    # "incrementValue":I
    .end local v15    # "stepValue":Ljava/lang/String;
    :catch_10
    move-exception v20

    goto/16 :goto_1

    .line 294
    :catch_11
    move-exception v20

    goto/16 :goto_0
.end method

.method private parseConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10
    .param p1, "concepts"    # Lorg/json/JSONObject;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v3, 0x0

    .line 225
    .local v3, "intentValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 226
    .local v1, "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->intentConceptList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 227
    .local v4, "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getDomain()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 228
    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    .end local v4    # "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    :cond_1
    if-nez v1, :cond_3

    .line 273
    :cond_2
    return-void

    .line 237
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    .local v4, "item":Ljava/lang/String;
    const/4 v5, 0x0

    .line 240
    .local v5, "top":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 241
    if-eqz v5, :cond_4

    .line 242
    const-string v9, "CALENDARX"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 243
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 244
    .local v0, "concept":Lorg/json/JSONObject;
    invoke-direct {p0, v0, v4}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseCalendarxConcept(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 245
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 246
    invoke-direct {p0, v0, v4}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseCalendarxConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v0    # "concept":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_5
    :try_start_1
    const-string v9, "GENERIC_ORDER"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 248
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 249
    .local v7, "value_object":Lorg/json/JSONObject;
    const-string v9, "value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "value":Ljava/lang/String;
    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v9}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 252
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "value_object":Lorg/json/JSONObject;
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 253
    .restart local v7    # "value_object":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 255
    .restart local v6    # "value":Ljava/lang/String;
    :try_start_2
    const-string v9, "value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 260
    :goto_1
    if-nez v6, :cond_7

    .line 261
    :try_start_3
    const-string v9, "literal"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    :cond_7
    if-eqz v6, :cond_4

    .line 264
    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v9}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 256
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private preProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 108
    .local v2, "result":Ljava/lang/String;
    const-string v5, "interpretations :"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 109
    .local v4, "start":I
    const-string v5, "diagnostic_info :"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "end":I
    if-ge v4, v0, :cond_4

    .line 111
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string v5, "[\\t\\n\\r]"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v4, 0x0

    .line 120
    :goto_0
    const-string v5, "},"

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 121
    .local v1, "position":I
    if-lez v1, :cond_1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alphaenglishchat/util/StringUtil;->isCharacter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    add-int/lit8 v4, v1, 0x2

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    const/4 v4, 0x0

    .line 132
    :goto_1
    const-string v5, "],"

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 133
    if-lez v1, :cond_3

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alphaenglishchat/util/StringUtil;->isCharacter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    add-int/lit8 v4, v1, 0x2

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v5, ",}"

    const-string v6, "}"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v5, ",]"

    const-string v6, "]"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v5, "}{"

    const-string v6, "},{"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .end local v1    # "position":I
    :cond_4
    return-object v2
.end method

.method private preProcess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "x"    # I

    .prologue
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 156
    .local v2, "result":Ljava/lang/String;
    const-string v5, "interpretations :"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 157
    .local v4, "start":I
    const-string v5, "diagnostic_info :"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "end":I
    if-ge v4, v0, :cond_4

    .line 159
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 163
    const-string v5, "[\\t\\n\\r]"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const/4 v4, 0x0

    .line 168
    :goto_0
    const-string v5, "},"

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 169
    .local v1, "position":I
    if-lez v1, :cond_1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alphaenglishchat/util/StringUtil;->isCharacter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    add-int/lit8 v4, v1, 0x2

    .line 177
    goto :goto_0

    .line 178
    :cond_1
    const/4 v4, 0x0

    .line 180
    :goto_1
    const-string v5, "],"

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 181
    if-lez v1, :cond_3

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alphaenglishchat/util/StringUtil;->isCharacter(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 183
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 185
    :cond_2
    add-int/lit8 v4, v1, 0x2

    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v5, ",}"

    const-string v6, "}"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v5, ",]"

    const-string v6, "]"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .end local v1    # "position":I
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getParseResult()Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    return-object v0
.end method

.method public parseJson(Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->preProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "preResult":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 103
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v7, 0x0

    .line 88
    .local v7, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v7    # "json":Lorg/json/JSONObject;
    .local v8, "json":Lorg/json/JSONObject;
    if-eqz v8, :cond_1

    .line 90
    :try_start_1
    const-string v10, "interpretations"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 91
    .local v6, "interpretations":Lorg/json/JSONArray;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 92
    .local v5, "interpre":Lorg/json/JSONObject;
    const-string v10, "action"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    .local v0, "action":Lorg/json/JSONObject;
    const-string v10, "intent"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 94
    .local v4, "intent":Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->getIntent(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "domain":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 96
    const-string v10, "concepts"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 97
    .local v1, "concepts":Lorg/json/JSONObject;
    invoke-direct {p0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/util/NewNLUResultParse;->parseConcept(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "action":Lorg/json/JSONObject;
    .end local v1    # "concepts":Lorg/json/JSONObject;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v4    # "intent":Lorg/json/JSONObject;
    .end local v5    # "interpre":Lorg/json/JSONObject;
    .end local v6    # "interpretations":Lorg/json/JSONArray;
    :cond_1
    move-object v7, v8

    .line 102
    .end local v8    # "json":Lorg/json/JSONObject;
    .restart local v7    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 100
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v7    # "json":Lorg/json/JSONObject;
    .restart local v8    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8    # "json":Lorg/json/JSONObject;
    .restart local v7    # "json":Lorg/json/JSONObject;
    goto :goto_1
.end method
