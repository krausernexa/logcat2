.class public Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;
.super Lcom/ubtech/alpha2/core/base/BaseModel;
.source "BinVersionResponse.java"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "binversion_xml"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71599931644947a5L


# instance fields
.field private item:Ljava/util/List;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "item"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ubtech/alpha2/core/model/response/BinVersionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/base/BaseModel;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;->item:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ubtech/alpha2/core/model/response/BinVersionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;->item:Ljava/util/List;

    return-object v0
.end method

.method public getItemByteTag(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/BinVersionItem;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;->item:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;

    .line 52
    .local v0, "binVersionItem":Lcom/ubtech/alpha2/core/model/response/BinVersionItem;
    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/model/response/BinVersionItem;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    .end local v0    # "binVersionItem":Lcom/ubtech/alpha2/core/model/response/BinVersionItem;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtech/alpha2/core/model/response/BinVersionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "item":Ljava/util/List;, "Ljava/util/List<Lcom/ubtech/alpha2/core/model/response/BinVersionItem;>;"
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/BinVersionResponse;->item:Ljava/util/List;

    .line 48
    return-void
.end method
