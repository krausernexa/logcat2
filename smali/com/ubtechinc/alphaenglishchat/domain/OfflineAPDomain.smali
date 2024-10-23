.class public Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "OfflineAPDomain.java"


# static fields
.field private static offlineAPDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;

.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private mAction_Dance:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->offlineAPDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->mAction_Dance:[Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->setBusy(Z)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->threadList:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->init()V

    .line 37
    return-void
.end method

.method public static getOfflineAPDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 40
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->offlineAPDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->offlineAPDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;

    .line 42
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 44
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->offlineAPDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->mAction_Dance:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method private startAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/actions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ubx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "strPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    if-eqz p1, :cond_0

    .line 419
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v1, p1}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_Action(Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->mContext:Landroid/content/Context;

    const v3, 0x7f080063

    .line 423
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 422
    invoke-interface {v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 425
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v1}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->onCompletion()V

    .line 426
    const-string v1, "zdy"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelAction()V
    .locals 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 434
    .local v0, "item":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 437
    .end local v0    # "item":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 10
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "index":I
    const-string v8, "Action_Performance"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getDomain()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 55
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "action"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "tag"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 57
    .local v7, "tag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "actionName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 59
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaActionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "newItem":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    move-object v1, v4

    .line 67
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "newItem":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    .line 68
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaDanceList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .restart local v4    # "item":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 70
    .restart local v5    # "newItem":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 71
    move-object v1, v4

    .line 76
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "newItem":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaDanceList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 77
    const-string v8, "AP_DANCE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 78
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    .line 79
    .local v6, "random":Ljava/util/Random;
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaDanceList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 80
    .local v2, "idx":I
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaDanceList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "actionName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 302
    .end local v2    # "idx":I
    .end local v6    # "random":Ljava/util/Random;
    .restart local v1    # "actionName":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 303
    const-string v8, "AP_NOD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 305
    const-string v1, "Nod"

    .line 405
    :cond_5
    :goto_0
    if-eqz v1, :cond_37

    .line 407
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-interface {v8, v1}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_Action(Ljava/lang/String;)V

    .line 412
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "actionName":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    :cond_6
    :goto_1
    return-void

    .line 306
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "actionName":Ljava/lang/String;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_7
    const-string v8, "AP_MOVE_LEFTWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 307
    const-string v1, "Move leftward"

    goto :goto_0

    .line 308
    :cond_8
    const-string v8, "AP_MOVE_RIGHTWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 309
    const-string v1, "Move rightward"

    goto :goto_0

    .line 310
    :cond_9
    const-string v8, "AP_MOVE_BACKWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 311
    const-string v1, "Move backward"

    goto :goto_0

    .line 312
    :cond_a
    const-string v8, "AP_MOVE_FORWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 313
    const-string v1, "Move forward"

    goto :goto_0

    .line 314
    :cond_b
    const-string v8, "AP_TURN_LEFT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 315
    const-string v1, "Turn left"

    goto :goto_0

    .line 316
    :cond_c
    const-string v8, "AP_TURN_RIGHT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 317
    const-string v1, "Turn right"

    goto :goto_0

    .line 318
    :cond_d
    const-string v8, "AP_SQUAT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 319
    const-string v1, "Squat"

    goto :goto_0

    .line 320
    :cond_e
    const-string v8, "AP_SQUAT_AND_STAND_UP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 321
    const-string v1, "Squat and stand up"

    goto :goto_0

    .line 322
    :cond_f
    const-string v8, "AP_LIFT_THE_LEFT_HAND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 323
    const-string v1, "Lift the left hand"

    goto :goto_0

    .line 324
    :cond_10
    const-string v8, "AP_LIFT_THE_RIGHT_HAND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 325
    const-string v1, "Lift the right hand"

    goto :goto_0

    .line 326
    :cond_11
    const-string v8, "AP_SHAKE_HEAD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 327
    const-string v1, "Shake head"

    goto :goto_0

    .line 328
    :cond_12
    const-string v8, "AP_LEFT_PUNCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 329
    const-string v1, "Left punch"

    goto/16 :goto_0

    .line 330
    :cond_13
    const-string v8, "AP_RIGHT_PUNCH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 331
    const-string v1, "Right punch"

    goto/16 :goto_0

    .line 332
    :cond_14
    const-string v8, "AP_WAVE_THE_LEFT_HAND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 333
    const-string v1, "Wave the left hand"

    goto/16 :goto_0

    .line 334
    :cond_15
    const-string v8, "AP_WAVE_THE_RIGHT_HAND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 335
    const-string v1, "Wave the right hand"

    goto/16 :goto_0

    .line 336
    :cond_16
    const-string v8, "AP_TURN_HEAD_LEFTWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 337
    const-string v1, "Turn head leftward"

    goto/16 :goto_0

    .line 338
    :cond_17
    const-string v8, "AP_TURN_HEAD_RIGHTWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 339
    const-string v1, "Turn head rightward"

    goto/16 :goto_0

    .line 340
    :cond_18
    const-string v8, "AP_FACE_FORWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 341
    const-string v1, "Face forward"

    goto/16 :goto_0

    .line 342
    :cond_19
    const-string v8, "AP_RAISE_HEAD_LEFTWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 343
    const-string v1, "Raise head leftward"

    goto/16 :goto_0

    .line 344
    :cond_1a
    const-string v8, "AP_RAISE_HEAD_RIGHTWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 345
    const-string v1, "Raise head rightward"

    goto/16 :goto_0

    .line 346
    :cond_1b
    const-string v8, "AP_RIGHT_LEG_LIFT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 347
    const-string v1, "Right leg lift"

    goto/16 :goto_0

    .line 348
    :cond_1c
    const-string v8, "AP_LEFT_LEG_LIFT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 349
    const-string v1, "Left leg lift"

    goto/16 :goto_0

    .line 350
    :cond_1d
    const-string v8, "AP_PLAY_KUNGFU"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 351
    const-string v1, "Play kungfu"

    goto/16 :goto_0

    .line 352
    :cond_1e
    const-string v8, "AP_LEFT_LEG_KICK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 353
    const-string v1, "Left leg kick"

    goto/16 :goto_0

    .line 354
    :cond_1f
    const-string v8, "AP_RIGHT_LEG_KICK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 355
    const-string v1, "Right leg kick"

    goto/16 :goto_0

    .line 356
    :cond_20
    const-string v8, "AP_LOWER_HEAD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 357
    const-string v1, "Lower head"

    goto/16 :goto_0

    .line 358
    :cond_21
    const-string v8, "AP_RAISE_THE_LEFT_HAND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 359
    const-string v1, "Raise the left hand"

    goto/16 :goto_0

    .line 360
    :cond_22
    const-string v8, "AP_RAISE_THE_RIGHT_HAND"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 361
    const-string v1, "Raise the right hand"

    goto/16 :goto_0

    .line 362
    :cond_23
    const-string v8, "AP_RAISE_BOTH_HANDS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 363
    const-string v1, "Raise both hands"

    goto/16 :goto_0

    .line 364
    :cond_24
    const-string v8, "AP_LIFT_BOTH_HANDS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 365
    const-string v1, "Lift both hands"

    goto/16 :goto_0

    .line 366
    :cond_25
    const-string v8, "AP_ACT_CUTE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 367
    const-string v1, "Act cute"

    goto/16 :goto_0

    .line 368
    :cond_26
    const-string v8, "AP_BLINK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 369
    const-string v1, "Blink"

    goto/16 :goto_0

    .line 370
    :cond_27
    const-string v8, "AP_LAUGH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 371
    const-string v1, "Laugh"

    goto/16 :goto_0

    .line 372
    :cond_28
    const-string v8, "AP_TURN_LEFT_AND_WALK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 373
    const-string v1, "Turn left and walk"

    goto/16 :goto_0

    .line 374
    :cond_29
    const-string v8, "AP_TURN_RIGHT_AND_WALK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 375
    const-string v1, "Turn right and walk"

    goto/16 :goto_0

    .line 376
    :cond_2a
    const-string v8, "AP_GO_BACKWARD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 377
    const-string v1, "Go backward"

    goto/16 :goto_0

    .line 378
    :cond_2b
    const-string v8, "AP_SHAKE_HANDS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 379
    const-string v1, "Shake hands"

    goto/16 :goto_0

    .line 380
    :cond_2c
    const-string v8, "AP_APPLAUD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 381
    const-string v1, "Applaud"

    goto/16 :goto_0

    .line 382
    :cond_2d
    const-string v8, "AP_AGREE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 383
    const-string v1, "Agree"

    goto/16 :goto_0

    .line 384
    :cond_2e
    const-string v8, "AP_DENY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 385
    const-string v1, "Deny"

    goto/16 :goto_0

    .line 386
    :cond_2f
    const-string v8, "AP_DANCE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 387
    const-string v1, "Dance"

    goto/16 :goto_0

    .line 388
    :cond_30
    const-string v8, "AP_GREETING"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 389
    const-string v1, "Greeting"

    goto/16 :goto_0

    .line 390
    :cond_31
    const-string v8, "AP_HAPPY"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 391
    const-string v1, "Happy"

    goto/16 :goto_0

    .line 392
    :cond_32
    const-string v8, "AP_SAD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 393
    const-string v1, "Sad"

    goto/16 :goto_0

    .line 394
    :cond_33
    const-string v8, "AP_THINKING"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 395
    const-string v1, "Thinking"

    goto/16 :goto_0

    .line 396
    :cond_34
    const-string v8, "AP_BORING"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 397
    const-string v1, "Boring"

    goto/16 :goto_0

    .line 398
    :cond_35
    const-string v8, "AP_RAISE_HEAD"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 399
    const-string v1, "Raise head"

    goto/16 :goto_0

    .line 400
    :cond_36
    const-string v8, "AP_BOW"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 401
    const-string v1, "Bow"

    goto/16 :goto_0

    .line 409
    :cond_37
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
