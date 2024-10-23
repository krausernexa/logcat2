.class public Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;
.super Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;
.source "NoResultEvent.java"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getmObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setmObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mObject"    # Ljava/lang/Object;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;->mObject:Ljava/lang/Object;

    .line 25
    return-void
.end method
