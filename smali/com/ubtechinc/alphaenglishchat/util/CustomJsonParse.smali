.class public Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;
.super Ljava/lang/Object;
.source "CustomJsonParse.java"


# static fields
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

.field public static final NUANCE_CALENDAR_STEP:Ljava/lang/String; = "DATE_STEP"

.field private static final NUANCE_CONCEPTS:Ljava/lang/String; = "concepts"

.field private static final NUANCE_DIAGNOSTIC_INFO:Ljava/lang/String; = "diagnostic_info"

.field private static final NUANCE_DURATION:Ljava/lang/String; = "DURATION"

.field private static final NUANCE_DURATION_DAYS:Ljava/lang/String; = "DAYS"

.field private static final NUANCE_DURATION_HOURS:Ljava/lang/String; = "HOURS"

.field private static final NUANCE_DURATION_MINUTES:Ljava/lang/String; = "MINUTES"

.field private static final NUANCE_INTERPRETATIONs:Ljava/lang/String; = "interpretations"

.field private static final NUANCE_LITERAL:Ljava/lang/String; = "literal"

.field private static final NUANCE_ORDER_PREV:Ljava/lang/String; = "prev"

.field private static final NUANCE_ORDER_SUCC:Ljava/lang/String; = "succ"

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
    .line 70
    .local p1, "intentConceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 72
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->intentConceptList:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method private getPreConcept(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "concepts"    # Ljava/lang/String;
    .param p2, "conceptName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "preConcept":Ljava/lang/String;
    const-string v5, "{"

    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 377
    .local v4, "start":I
    const-string v5, "ranges"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 378
    .local v2, "rangesIndex":I
    const-string v5, "}"

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 379
    .local v0, "end":I
    if-ge v4, v0, :cond_0

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v3, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-object v1
.end method

.method private isStringAllUppercase(Ljava/lang/String;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 182
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    const/4 v2, 0x0

    .line 187
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 179
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private parseCALENDARX(Ljava/lang/String;)V
    .locals 3
    .param p1, "calendarx"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    const-string v2, "DATE_ABS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    const-string v2, "MONTH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, "indexMonth":I
    const-string v2, "DAY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "indexDay":I
    if-ltz v1, :cond_0

    .line 248
    .end local v0    # "indexDay":I
    .end local v1    # "indexMonth":I
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v2, "TIME_ABS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const-string v2, "TIME_REL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    const-string v2, "DATE_REL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
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
    .line 429
    const/4 v10, 0x0

    .line 430
    .local v10, "result":Ljava/lang/String;
    const-string v14, "DATE_REL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 431
    const-string v14, "DAY_OF_WEEK"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 432
    const-string v14, "DAY_OF_WEEK"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 433
    .local v12, "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 434
    .local v4, "end":I
    if-ge v12, v4, :cond_0

    .line 435
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v11, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0xe

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "dayOfWeek":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 440
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

    .line 605
    .end local v3    # "dayOfWeek":Ljava/lang/String;
    .end local v4    # "end":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_0
    :goto_0
    return-object v10

    .line 442
    :cond_1
    const-string v14, "STEP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 443
    const-string v14, "STEP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 444
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 445
    .restart local v4    # "end":I
    if-ge v12, v4, :cond_0

    .line 446
    const/4 v13, 0x0

    .line 447
    .local v13, "step":Ljava/lang/String;
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 448
    if-ge v12, v4, :cond_2

    .line 449
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 453
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 456
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v14, "INCREMENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 457
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 458
    if-ge v12, v4, :cond_0

    .line 459
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "increment":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 465
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DATE_STEP("

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

    .line 470
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

    .line 471
    const/4 v8, 0x0

    .line 472
    .local v8, "month":Ljava/lang/String;
    const/4 v2, 0x0

    .line 473
    .local v2, "day":Ljava/lang/String;
    const-string v14, "MONTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 474
    const-string v14, "MONTH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 475
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 476
    .restart local v4    # "end":I
    const/4 v8, 0x0

    .line 477
    if-ge v12, v4, :cond_4

    .line 478
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 482
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 485
    .end local v4    # "end":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_4
    const-string v14, "DAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 486
    const-string v14, "DAY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 487
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 488
    .restart local v4    # "end":I
    const/4 v2, 0x0

    .line 489
    if-ge v12, v4, :cond_5

    .line 490
    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 491
    const-string v14, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 492
    .local v9, "quotation":I
    if-le v9, v4, :cond_8

    .line 493
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 506
    .end local v4    # "end":I
    .end local v9    # "quotation":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .end local v12    # "start":I
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_6

    .line 508
    const-string v14, "MONTH"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
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

    .line 512
    :cond_6
    if-eqz v2, :cond_7

    .line 513
    const-string v14, "DAY"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
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

    .line 517
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 518
    goto/16 :goto_0

    .line 497
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "end":I
    .restart local v9    # "quotation":I
    .restart local v12    # "start":I
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v9, 0x1

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 518
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

    .line 519
    const/4 v1, 0x0

    .line 520
    .local v1, "ampm":Ljava/lang/String;
    const/4 v5, 0x0

    .line 521
    .local v5, "hour":Ljava/lang/String;
    const/4 v7, 0x0

    .line 523
    .local v7, "minute":Ljava/lang/String;
    const/4 v12, -0x1

    .line 524
    .restart local v12    # "start":I
    const/4 v4, -0x1

    .line 525
    .restart local v4    # "end":I
    const-string v14, "AMPM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 526
    const-string v14, "AMPM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 527
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 528
    if-ge v12, v4, :cond_a

    .line 529
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 537
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    const-string v14, "HOUR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 538
    const-string v14, "HOUR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 539
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 540
    if-ge v12, v4, :cond_b

    .line 541
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 545
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 549
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    const-string v14, "MINUTE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 550
    const-string v14, "MINUTE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 551
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 552
    if-ge v12, v4, :cond_c

    .line 553
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 554
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 557
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 561
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_d

    .line 563
    const-string v14, "AMPM"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
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

    .line 567
    :cond_d
    if-eqz v5, :cond_e

    .line 568
    const-string v14, "HOUR"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
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

    .line 572
    :cond_e
    if-eqz v7, :cond_f

    .line 573
    const-string v14, "MINUTE"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
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

    .line 577
    :cond_f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 578
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

    .line 579
    const-string v14, "STEP"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 580
    .restart local v12    # "start":I
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 581
    .restart local v4    # "end":I
    if-ge v12, v4, :cond_0

    .line 582
    const/4 v13, 0x0

    .line 583
    .restart local v13    # "step":Ljava/lang/String;
    const-string v14, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .line 584
    if-ge v12, v4, :cond_11

    .line 585
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0x1

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 589
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 592
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    const-string v14, "INCREMENT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 593
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 594
    if-ge v12, v4, :cond_0

    .line 595
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v14, v12, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 599
    .restart local v6    # "increment":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 600
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

.method private parseConcept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v11, 0x0

    .line 304
    .local v11, "intentValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 305
    .local v6, "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->intentConceptList:Ljava/util/ArrayList;

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

    .line 306
    .local v12, "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    invoke-virtual {v12}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getDomain()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 307
    invoke-virtual {v12}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v6

    .line 312
    .end local v12    # "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    :cond_1
    if-nez v6, :cond_3

    .line 372
    :cond_2
    return-void

    .line 316
    :cond_3
    const-string v22, "concepts"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 317
    .local v19, "start":I
    const-string v22, "action"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 318
    .local v9, "end":I
    const/4 v8, 0x0

    .line 319
    .local v8, "concepts":Ljava/lang/String;
    move/from16 v0, v19

    if-le v9, v0, :cond_4

    .line 320
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v18, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v22, v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 325
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v7, 0x0

    .line 326
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

    .line 327
    .local v12, "item":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 328
    .local v10, "index":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-le v10, v0, :cond_5

    .line 329
    const-string v23, "CALENDARX"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string v23, "GENERIC_ORDER"

    .line 330
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 331
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v10}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->getPreConcept(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 332
    .local v15, "preConcept":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parsePreConcept(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v15    # "preConcept":Ljava/lang/String;
    :cond_7
    const-string v23, "{"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 335
    .local v4, "blankStart":I
    const-string v23, "}"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 336
    .local v3, "blankEnd":I
    if-ge v4, v3, :cond_5

    .line 337
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v23, v3, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "conceptContent":Ljava/lang/String;
    const-string v23, "value"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 342
    .local v21, "valueStart":I
    const-string v23, "ranges"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 343
    .local v16, "rangesStart":I
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 344
    const-string v23, ","

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v20

    .line 345
    .local v20, "valueEnd":I
    const/16 v23, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 346
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v17, "sBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v23, v21, 0x8

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 350
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 355
    .end local v17    # "sBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "valueEnd":I
    :cond_8
    const-string v23, "literal"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 356
    .local v14, "literalStart":I
    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 357
    .local v13, "literalEnd":I
    if-ge v14, v13, :cond_5

    .line 358
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .restart local v17    # "sBuilder":Ljava/lang/StringBuilder;
    add-int/lit8 v23, v14, 0x9

    move/from16 v0, v23

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private parseConcept(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "conceptJSONObject"    # Lorg/json/JSONObject;

    .prologue
    .line 124
    if-eqz p1, :cond_2

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "domain":Ljava/lang/String;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->intentConceptList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 128
    .local v5, "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    .end local v5    # "item":Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    :cond_1
    if-nez v1, :cond_3

    .line 176
    .end local v1    # "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "domain":Ljava/lang/String;
    :cond_2
    return-void

    .line 138
    .restart local v1    # "conceptList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "domain":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    .local v5, "item":Ljava/lang/String;
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "conceptArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 143
    .local v2, "conceptObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 144
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    :goto_1
    invoke-direct {p0, v5}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->isStringAllUppercase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 151
    invoke-direct {p0, v2, v5}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parsePreConcept(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v4

    .line 147
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v6, 0x0

    .line 157
    .local v6, "value":Ljava/lang/String;
    :try_start_1
    const-string v8, "value"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 158
    const-string v8, "value"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    if-eqz v6, :cond_6

    const-string v8, ""

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 160
    :cond_6
    const-string v8, "literal"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 169
    :cond_7
    :goto_2
    if-eqz v6, :cond_4

    .line 170
    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_8
    :try_start_2
    const-string v8, "literal"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    goto :goto_2

    .line 165
    :catch_1
    move-exception v4

    .line 166
    .restart local v4    # "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private parseDiagnos(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "diagnos"    # Lorg/json/JSONObject;

    .prologue
    .line 92
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;

    .line 94
    .local v0, "resultDiagnosticInfo":Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 96
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->getTiming()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->getFinalRespSentDelay()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setFinalRespSentDelay(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 98
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultDiagnosticInfo;->getTiming()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultTiming;->getIntermediateRespSentDelay()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setIntermediateRespSentDelay(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method private parseIntent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 274
    .local v2, "intentValue":Ljava/lang/String;
    const-string v6, "intent"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 275
    .local v5, "start":I
    const/4 v0, 0x0

    .line 276
    .local v0, "end":I
    if-lez v5, :cond_2

    .line 277
    const-string v6, "}"

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "intent":Ljava/lang/String;
    if-le v0, v5, :cond_0

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v4, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v5, 0x9

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz v1, :cond_1

    .line 289
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 290
    if-lez v5, :cond_1

    .line 291
    const-string v6, ","

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 292
    if-lez v0, :cond_1

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    move-object v3, v2

    .line 299
    .end local v1    # "intent":Ljava/lang/String;
    .end local v2    # "intentValue":Ljava/lang/String;
    .local v3, "intentValue":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "intentValue":Ljava/lang/String;
    .restart local v2    # "intentValue":Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 279
    .end local v2    # "intentValue":Ljava/lang/String;
    .restart local v3    # "intentValue":Ljava/lang/String;
    goto :goto_0
.end method

.method private parseInterpretations(Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "interArray"    # Lorg/json/JSONArray;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 105
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 106
    .local v4, "inter":Lorg/json/JSONObject;
    const-string v7, "action"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    .local v0, "actionJSONObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->getInstance()Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;

    move-result-object v7

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

    .line 107
    invoke-virtual {v7, v8, v9}, Lcom/ubtechinc/alpha2ctrlapp/network/JsonUtils;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;

    .line 109
    .local v5, "resultAction":Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;
    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;->getIntent()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "intent":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "strs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 112
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 113
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v5}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;->getIntent()Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultIntent;->getConfidence()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setConfidence(F)V

    .line 114
    const-string v7, "concepts"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    .local v1, "conceptJSONObject":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseConcept(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "actionJSONObject":Lorg/json/JSONObject;
    .end local v1    # "conceptJSONObject":Lorg/json/JSONObject;
    .end local v3    # "intent":Ljava/lang/String;
    .end local v4    # "inter":Lorg/json/JSONObject;
    .end local v5    # "resultAction":Lcom/ubtechinc/alphaenglishchat/resultEntity/ResultAction;
    .end local v6    # "strs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parsePreConcept(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "preConcept"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string v6, "CALENDARX"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 389
    const-string v6, "CALENDAR_RANGE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 390
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseCalendarxConcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v2, 0x0

    .line 394
    .restart local v2    # "result":Ljava/lang/String;
    const/4 v5, 0x0

    .line 395
    .local v5, "subResult":Ljava/lang/String;
    const-string v6, "CALENDAR_RANGE_START"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 396
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseCalendarxConcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    :cond_2
    const-string v6, "CALENDAR_RANGE_END"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 399
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseCalendarxConcept(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 402
    :cond_3
    if-eqz v2, :cond_0

    .line 403
    if-eqz v5, :cond_4

    .line 404
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

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

    .line 407
    :cond_4
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

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

    .line 411
    .end local v2    # "result":Ljava/lang/String;
    .end local v5    # "subResult":Ljava/lang/String;
    :cond_5
    const-string v6, "GENERIC_ORDER"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 412
    const/4 v2, 0x0

    .line 413
    .restart local v2    # "result":Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    const-string v6, "value"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 415
    .local v4, "start":I
    const-string v6, ","

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 416
    .local v0, "end":I
    if-ge v4, v0, :cond_0

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v3, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v4, 0x7

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "order":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

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
    .line 191
    if-eqz p1, :cond_0

    .line 193
    :try_start_0
    const-string v7, "value"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 195
    .local v6, "valueObject":Lorg/json/JSONObject;
    const-string v7, "CALENDARX"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    if-eqz v6, :cond_0

    .line 197
    const-string v7, "CALENDAR"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 198
    const-string v7, "CALENDAR"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    .local v0, "calendarObject":Lorg/json/JSONObject;
    const-string v7, "DATE"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 200
    const-string v7, "DATE"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 201
    .local v1, "dateObject":Lorg/json/JSONObject;
    const-string v7, "DATE_REL"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 202
    const-string v7, "DATE_REL"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 203
    .local v2, "dateRelObject":Lorg/json/JSONObject;
    const-string v7, "DAY_OF_WEEK"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 204
    const-string v7, "DAY_OF_WEEK"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 205
    .local v3, "dayOfWeek":I
    const-string v7, "INCREMENT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 206
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

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

    .line 228
    .end local v0    # "calendarObject":Lorg/json/JSONObject;
    .end local v1    # "dateObject":Lorg/json/JSONObject;
    .end local v2    # "dateRelObject":Lorg/json/JSONObject;
    .end local v3    # "dayOfWeek":I
    .end local v6    # "valueObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 209
    .restart local v0    # "calendarObject":Lorg/json/JSONObject;
    .restart local v1    # "dateObject":Lorg/json/JSONObject;
    .restart local v2    # "dateRelObject":Lorg/json/JSONObject;
    .restart local v6    # "valueObject":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "INCREMENT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 210
    const-string v7, "INCREMENT"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 211
    .local v5, "increment":I
    const-string v7, "day"

    const-string v8, "DATE_STEP"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

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

    .line 223
    .end local v0    # "calendarObject":Lorg/json/JSONObject;
    .end local v1    # "dateObject":Lorg/json/JSONObject;
    .end local v2    # "dateRelObject":Lorg/json/JSONObject;
    .end local v5    # "increment":I
    .end local v6    # "valueObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 225
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 220
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
    .line 251
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    return-object v0
.end method

.method public parseJson(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 78
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v3    # "json":Lorg/json/JSONObject;
    .local v4, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "diagnostic_info"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    .local v0, "diagnos":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseDiagnos(Lorg/json/JSONObject;)V

    .line 82
    const-string v5, "interpretations"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 83
    .local v2, "interArray":Lorg/json/JSONArray;
    invoke-direct {p0, v2}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseInterpretations(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 89
    .end local v0    # "diagnos":Lorg/json/JSONObject;
    .end local v2    # "interArray":Lorg/json/JSONArray;
    .end local v4    # "json":Lorg/json/JSONObject;
    .restart local v3    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

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

    .line 255
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseIntent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "intent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 257
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "strs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-virtual {v3, p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setSentence(Ljava/lang/String;)V

    .line 262
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    invoke-direct {p0, p1, v3}, Lcom/ubtechinc/alphaenglishchat/util/CustomJsonParse;->parseConcept(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v2    # "strs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local v2    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
