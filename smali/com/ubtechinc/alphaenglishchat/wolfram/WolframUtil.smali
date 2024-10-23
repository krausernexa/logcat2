.class public Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;
.super Ljava/lang/Object;
.source "WolframUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WolframUtil"

.field private static final WOLFRAM_APP_ID:Ljava/lang/String; = "9UE4LQ-TWQP2WWXVK"

.field private static sWolframUtil:Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;


# instance fields
.field private engine:Lcom/wolfram/alpha/WAEngine;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/wolfram/alpha/WAEngine;

    invoke-direct {v0}, Lcom/wolfram/alpha/WAEngine;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->engine:Lcom/wolfram/alpha/WAEngine;

    .line 25
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->engine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "9UE4LQ-TWQP2WWXVK"

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->setAppID(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->engine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "plaintext"

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->addFormat(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static getWolframUtilInstance()Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->sWolframUtil:Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;-><init>()V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->sWolframUtil:Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;

    .line 33
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->sWolframUtil:Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;

    return-object v0
.end method


# virtual methods
.method public cancelQuery()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->engine:Lcom/wolfram/alpha/WAEngine;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->engine:Lcom/wolfram/alpha/WAEngine;

    invoke-virtual {v0}, Lcom/wolfram/alpha/WAEngine;->cancel()V

    .line 94
    :cond_0
    return-void
.end method

.method public query(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v7, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->engine:Lcom/wolfram/alpha/WAEngine;

    invoke-virtual {v9}, Lcom/wolfram/alpha/WAEngine;->createQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v5

    .line 39
    .local v5, "query":Lcom/wolfram/alpha/WAQuery;
    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Lcom/wolfram/alpha/WAQuery;->setInput(Ljava/lang/String;)V

    .line 40
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-interface {v5, v10, v11}, Lcom/wolfram/alpha/WAQuery;->setAsync(D)V

    .line 41
    const-string v9, "plaintext"

    invoke-interface {v5, v9}, Lcom/wolfram/alpha/WAQuery;->addFormat(Ljava/lang/String;)V

    .line 42
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lcom/wolfram/alpha/WAQuery;->setReinterpret(Z)V

    .line 44
    const-string v9, "WolframUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Query input="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v6, 0x0

    .line 47
    .local v6, "queryResult":Lcom/wolfram/alpha/WAQueryResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->engine:Lcom/wolfram/alpha/WAEngine;

    invoke-virtual {v9, v5}, Lcom/wolfram/alpha/WAEngine;->performQuery(Lcom/wolfram/alpha/WAQuery;)Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 52
    :goto_0
    if-eqz v6, :cond_0

    .line 53
    invoke-interface {v6}, Lcom/wolfram/alpha/WAQueryResult;->isError()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 54
    const-string v9, "WolframUtil"

    const-string v10, "Query error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v9, "WolframUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  error code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lcom/wolfram/alpha/WAQueryResult;->getErrorCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v9, "WolframUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  error message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lcom/wolfram/alpha/WAQueryResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Lcom/wolfram/alpha/WAException;
    invoke-virtual {v2}, Lcom/wolfram/alpha/WAException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v2    # "e":Lcom/wolfram/alpha/WAException;
    :cond_1
    invoke-interface {v6}, Lcom/wolfram/alpha/WAQueryResult;->isSuccess()Z

    move-result v9

    if-nez v9, :cond_2

    .line 58
    const-string v9, "WolframUtil"

    const-string v10, "Query was not understood; no results available."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 61
    :cond_2
    const-string v9, "WolframUtil"

    const-string v10, "Successful query. Pods follow:\n"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {v6}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v13

    array-length v14, v13

    const/4 v9, 0x0

    move v12, v9

    :goto_2
    if-ge v12, v14, :cond_0

    aget-object v4, v13, v12

    .line 64
    .local v4, "pod":Lcom/wolfram/alpha/WAPod;
    const-string v9, "WolframUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pod="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {v4}, Lcom/wolfram/alpha/WAPod;->isError()Z

    move-result v9

    if-nez v9, :cond_6

    .line 66
    const-string v9, "WolframUtil"

    invoke-interface {v4}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v9, "WolframUtil"

    const-string v10, "------------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-interface {v4}, Lcom/wolfram/alpha/WAPod;->getSubpods()[Lcom/wolfram/alpha/WASubpod;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v9, 0x0

    move v11, v9

    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    aget-object v8, v15, v11

    .line 69
    .local v8, "subpod":Lcom/wolfram/alpha/WASubpod;
    invoke-interface {v8}, Lcom/wolfram/alpha/WASubpod;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_4
    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    aget-object v3, v17, v10

    .line 70
    .local v3, "element":Lcom/wolfram/alpha/visitor/Visitable;
    instance-of v9, v3, Lcom/wolfram/alpha/WAPlainText;

    if-eqz v9, :cond_3

    move-object v9, v3

    .line 71
    check-cast v9, Lcom/wolfram/alpha/WAPlainText;

    invoke-interface {v9}, Lcom/wolfram/alpha/WAPlainText;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v9, "WolframUtil"

    check-cast v3, Lcom/wolfram/alpha/WAPlainText;

    .end local v3    # "element":Lcom/wolfram/alpha/visitor/Visitable;
    invoke-interface {v3}, Lcom/wolfram/alpha/WAPlainText;->getText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v9, "WolframUtil"

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_4

    .line 68
    :cond_4
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_3

    .line 78
    .end local v8    # "subpod":Lcom/wolfram/alpha/WASubpod;
    :cond_5
    const-string v9, "WolframUtil"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_6
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    goto/16 :goto_2
.end method
