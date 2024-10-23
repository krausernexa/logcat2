.class public abstract Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;
.super Ljava/lang/Object;
.source "AbstractEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;,
        Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;,
        Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventPriority;
    }
.end annotation


# instance fields
.field protected mCanPause:Z

.field protected mID:I

.field private mIndex:I

.field protected mNeedCheck:Z

.field private mObj:Ljava/lang/Object;

.field private mPriority:I

.field private mState:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

.field private mStateListener:Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

.field private mType:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mCanPause:Z

    .line 21
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mStateListener:Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    .line 22
    return-void
.end method


# virtual methods
.method public getmID()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mID:I

    return v0
.end method

.method public getmIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mIndex:I

    return v0
.end method

.method public getmObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getmPriority()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mPriority:I

    return v0
.end method

.method public getmState()Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mState:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    return-object v0
.end method

.method public getmStateListener()Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mStateListener:Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    return-object v0
.end method

.method public getmType()Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mType:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    return-object v0
.end method

.method public ismCanPause()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mCanPause:Z

    return v0
.end method

.method public ismNeedCheck()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mNeedCheck:Z

    return v0
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public setmCanPause(Z)V
    .locals 0
    .param p1, "mCanPause"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mCanPause:Z

    .line 99
    return-void
.end method

.method public setmID(I)V
    .locals 0
    .param p1, "mID"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mID:I

    .line 70
    return-void
.end method

.method public setmIndex(I)V
    .locals 0
    .param p1, "mIndex"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mIndex:I

    .line 91
    return-void
.end method

.method public setmNeedCheck(Z)V
    .locals 0
    .param p1, "mNeedCheck"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mNeedCheck:Z

    .line 115
    return-void
.end method

.method public setmObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mObj"    # Ljava/lang/Object;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mObj:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public setmPriority(I)V
    .locals 0
    .param p1, "mPriority"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mPriority:I

    .line 54
    return-void
.end method

.method public setmState(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;)V
    .locals 0
    .param p1, "mState"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mState:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventState;

    .line 62
    return-void
.end method

.method public setmStateListener(Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;)V
    .locals 0
    .param p1, "mStateListener"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mStateListener:Lcom/ubtechinc/alpha2serverlib/eventdispatch/IStateListener;

    .line 78
    return-void
.end method

.method public setmType(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;)V
    .locals 0
    .param p1, "mType"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent;->mType:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AbstractEvent$EventType;

    .line 123
    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
