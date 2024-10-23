.class public Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;
.super Lcom/ubtech/alpha2/core/base/BaseModel;
.source "OrderXMLResponse.java"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "order_xml"
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
            "Lcom/ubtech/alpha2/core/model/response/OrderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ubtech/alpha2/core/base/BaseModel;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;->item:Ljava/util/List;

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
            "Lcom/ubtech/alpha2/core/model/response/OrderItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;->item:Ljava/util/List;

    return-object v0
.end method

.method public setItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtech/alpha2/core/model/response/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "item":Ljava/util/List;, "Ljava/util/List<Lcom/ubtech/alpha2/core/model/response/OrderItem;>;"
    iput-object p1, p0, Lcom/ubtech/alpha2/core/model/response/OrderXMLResponse;->item:Ljava/util/List;

    .line 51
    return-void
.end method
