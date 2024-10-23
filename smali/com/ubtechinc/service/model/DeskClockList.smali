.class public Lcom/ubtechinc/service/model/DeskClockList;
.super Ljava/lang/Object;
.source "DeskClockList.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/model/DeskClock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/service/model/DeskClockList;->list:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public addToList(Lcom/ubtechinc/service/model/DeskClock;)V
    .locals 1
    .param p1, "info"    # Lcom/ubtechinc/service/model/DeskClock;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClockList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/model/DeskClock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClockList;->list:Ljava/util/List;

    return-object v0
.end method
