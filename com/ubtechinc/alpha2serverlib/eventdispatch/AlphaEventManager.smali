.class public Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;
.super Ljava/lang/Object;
.source "AlphaEventManager.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;


# static fields
.field public static final BTACTION:Ljava/lang/String; = "com.alpha.ubtech.btevent"

.field public static final HARDWARE_APP_EVENT:Ljava/lang/String; = "com.ubtechinc.hardware.eventmsg"

.field private static final STATE_PAUSE:I = 0x2

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RESUME:I = 0x3

.field private static final STATE_START:I = 0x1

.field private static final STATE_STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AlphaEventManager"

.field private static sAlphaEventManager:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;


# instance fields
.field private OrderIsdn:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/os/Handler;

.field private mEventQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager$1;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager$1;-><init>(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->OrderIsdn:Ljava/util/Comparator;

    .line 44
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->OrderIsdn:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 47
    iput-object p2, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public static getAlphaEventManagerInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sAlphaEventManager:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;

    invoke-direct {v0, p0, p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sAlphaEventManager:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sAlphaEventManager:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;

    return-object v0
.end method

.method private process(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;I)V
    .locals 5
    .param p1, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 805
    const-string v1, "AlphaEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mEventQueue.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    packed-switch p2, :pswitch_data_0

    .line 878
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 809
    :pswitch_1
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 810
    .local v0, "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    if-eqz v0, :cond_0

    .line 811
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    if-nez v1, :cond_1

    .line 812
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 813
    .restart local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 814
    const-string v1, "AlphaEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWorkingEvent.getmObj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v3}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmObj()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-direct {p0, v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sendMessage(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V

    goto :goto_0

    .line 817
    :cond_1
    const-string v1, "AlphaEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWorkingEvent.index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v3}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v1, "AlphaEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWorkingEvent.getmPriority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v3}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmPriority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v1, "AlphaEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nextEvent.getmPriority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmPriority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v1, "AlphaEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nextEvent.getmObj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmObj()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-virtual {v0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmPriority()I

    move-result v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmPriority()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 822
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->ismCanPause()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->pause()V

    goto/16 :goto_0

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->stop()V

    goto/16 :goto_0

    .line 838
    .end local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    :pswitch_2
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 839
    if-eqz p1, :cond_3

    .line 840
    invoke-virtual {p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->getmID()I

    move-result v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmID()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 844
    :cond_3
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 845
    .restart local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    if-eqz v0, :cond_0

    .line 846
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 847
    .restart local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 848
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-direct {p0, v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sendMessage(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V

    goto/16 :goto_0

    .line 851
    .end local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    :cond_4
    iput-object v4, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    goto/16 :goto_0

    .line 859
    :pswitch_3
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 860
    if-eqz p1, :cond_5

    .line 861
    invoke-virtual {p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->getmID()I

    move-result v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmID()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 865
    :cond_5
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 866
    .restart local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    if-eqz v0, :cond_6

    .line 867
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 868
    .restart local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    iput-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .line 869
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-direct {p0, v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sendMessage(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V

    goto/16 :goto_0

    .line 871
    :cond_6
    iput-object v4, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    goto/16 :goto_0

    .line 874
    .end local v0    # "nextEvent":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    :cond_7
    iput-object v4, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mWorkingEvent:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    goto/16 :goto_0

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private sendMessage(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .prologue
    .line 798
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 799
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmIndex()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 800
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 801
    iget-object v1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 802
    return-void
.end method


# virtual methods
.method public onEventPause(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;

    .prologue
    .line 887
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->process(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;I)V

    .line 888
    return-void
.end method

.method public onEventResume(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;

    .prologue
    .line 893
    return-void
.end method

.method public onEventStart(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;

    .prologue
    .line 883
    return-void
.end method

.method public onEventStop(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;

    .prologue
    .line 897
    const-string v0, "AlphaEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onEventStop event.index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->getmIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->process(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;I)V

    .line 899
    return-void
.end method

.method public parseIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;-><init>(Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;)V

    .line 61
    .local v1, "event":Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    sget-object v2, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;->STATE_PREPARE:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmState(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;)V

    .line 63
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 65
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 66
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    .line 777
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmObj(Ljava/lang/Object;)V

    .line 778
    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->ismNeedCheck()Z

    move-result v2

    if-ne v2, v8, :cond_1e

    .line 779
    const-string v2, "AlphaEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_PREPARE event.index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v2, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 781
    const/4 v2, 0x0

    invoke-direct {p0, v2, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->process(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;I)V

    .line 785
    :goto_1
    return-void

    .line 67
    :cond_1
    const-string v2, "com.ubtechinc.services.speechcmd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 69
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 70
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v2, "com.ubtechinc.services.chest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 92
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 93
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto :goto_0

    .line 215
    :cond_3
    const-string v2, "com.ubtechinc.services.header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 218
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 219
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto :goto_0

    .line 330
    :cond_4
    const-string v2, "com.ubtechinc.services.baseaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 332
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 333
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 334
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto :goto_0

    .line 362
    :cond_5
    const-string v2, "com.ubtechinc.services.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 363
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 364
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 365
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 375
    :cond_6
    const-string v2, "com.ubtechinc.update.chess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 376
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 377
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 378
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 402
    :cond_7
    const-string v2, "com.ubtechinc.udate.header"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 403
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 404
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 405
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 427
    :cond_8
    const-string v2, "com.ubtechinc.services.bluetooth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 428
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 429
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 430
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 438
    :cond_9
    const-string v2, "com.ubt.alpha2.bt.alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 439
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 440
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 441
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 446
    :cond_a
    const-string v2, "com.ubtechinc.services.thirdparty.playaction"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 447
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 448
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 449
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 460
    :cond_b
    const-string v2, "com.ubt.alpha2.app.manager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 461
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 462
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 463
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 481
    :cond_c
    const-string v2, "com.ubt.alpha2.digital.decode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 482
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 483
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 484
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 501
    :cond_d
    const-string v2, "com.ubtechinc.services.speech.thirdparty.tts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 502
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 503
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 504
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 508
    :cond_e
    const-string v2, "com.ubtechinc.services.verifycationcode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 509
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 510
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 511
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 536
    :cond_f
    const-string v2, "com.ubtechinc.services.deskclock.wakeup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 537
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 538
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 539
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 548
    :cond_10
    const-string v2, "com.ubtechinc.services.action.play"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 549
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 550
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 551
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 556
    :cond_11
    const-string v2, "AlphaCooeeServiceBussiness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 557
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 558
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 559
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 609
    :cond_12
    const-string v2, "com.ubt.alpha2.cooee.decode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 611
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 612
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 613
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 615
    :cond_13
    const-string v2, "com.ubt.alpha2.wifiresult"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 616
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 617
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 618
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 631
    :cond_14
    const-string v2, "com.alpha2.hardware.test"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 632
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 633
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 634
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 655
    :cond_15
    const-string v2, "com.ubtechinc.hardware.eventmsg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 656
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 657
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 658
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 661
    :cond_16
    const-string v2, "com.ubtechinc.robot.tts_hint_wakeup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 662
    const-string v2, "AlphaEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALPHA_TTS_HINT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "hint_event"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 664
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 665
    invoke-virtual {v1, v8}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 682
    :cond_17
    const-string v2, "com.ubtechinc.services.bluetooth.open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 683
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 684
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 685
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 691
    :cond_18
    const-string v2, "com.alpha.ubtech.btevent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 692
    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 693
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 694
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 696
    :cond_19
    const-string v2, "com.ubtechinc.services.LED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 697
    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 698
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 699
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 722
    :cond_1a
    const-string v2, "com.ubtechinc.services.SET_RTC_TIME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 723
    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 724
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 725
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 745
    :cond_1b
    const-string v2, "com.ubtechinc.services.POWER_SAVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 746
    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 747
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 748
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 758
    :cond_1c
    const-string v2, "com.ubtechinc.services.SET_CHARGE_PLAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 759
    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 760
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 761
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 772
    :cond_1d
    const-string v2, "com.ubtechinc.services.NUANCE_OFFLINE_CMD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmIndex(I)V

    .line 774
    invoke-virtual {v1, v6}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmPriority(I)V

    .line 775
    invoke-virtual {v1, v7}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->setmNeedCheck(Z)V

    goto/16 :goto_0

    .line 783
    :cond_1e
    invoke-direct {p0, v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sendMessage(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V

    goto/16 :goto_1
.end method

.method public processEvent(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .prologue
    .line 788
    invoke-virtual {p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->ismNeedCheck()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 789
    const-string v0, "AlphaEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE_PREPARE event.index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->mEventQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 791
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->process(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;I)V

    .line 795
    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;->sendMessage(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)V

    goto :goto_0
.end method
