.class public Lcom/ubtechinc/service/model/AlarmEntrityList;
.super Ljava/lang/Object;
.source "AlarmEntrityList.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private wifilist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/model/AlarmEntrity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/service/model/AlarmEntrityList;->wifilist:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public addToList(Lcom/ubtechinc/service/model/AlarmEntrity;)V
    .locals 1
    .param p1, "info"    # Lcom/ubtechinc/service/model/AlarmEntrity;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/service/model/AlarmEntrityList;->wifilist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/service/model/AlarmEntrity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ubtechinc/service/model/AlarmEntrityList;->wifilist:Ljava/util/List;

    return-object v0
.end method
