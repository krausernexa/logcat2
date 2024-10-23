.class public Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;
.super Ljava/lang/Object;
.source "IntentConceptLoad.java"


# instance fields
.field private intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

.field private mAssetMgr:Landroid/content/res/AssetManager;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "assetMgr"    # Landroid/content/res/AssetManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->mAssetMgr:Landroid/content/res/AssetManager;

    .line 33
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-direct {v1}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;-><init>()V

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    .line 35
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public parseIntentConcept(Ljava/lang/String;)Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 42
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getDomain()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 43
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getActionList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 46
    :cond_0
    const-string v3, ""

    .line 47
    .local v3, "domain":Ljava/lang/String;
    const-string v0, ""

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v1, ""

    .line 49
    .local v1, "concept":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->mAssetMgr:Landroid/content/res/AssetManager;

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 50
    .local v5, "inputStream":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "utf-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 53
    .local v4, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    .line 54
    packed-switch v4, :pswitch_data_0

    .line 84
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 85
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!!! concept="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :pswitch_1
    const-string v6, "domain"

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "value"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->setDomain(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_2
    const-string v6, "action"

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 67
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getActionList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "value"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_3
    const-string v6, "concept"

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v7, "value"

    invoke-interface {v6, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "conp":Ljava/lang/String;
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    invoke-virtual {v6}, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;->getConceptList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 87
    .end local v2    # "conp":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 88
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/util/IntentConceptLoad;->intentConceptData:Lcom/ubtechinc/alphaenglishchat/util/IntentConceptData;

    return-object v6

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
