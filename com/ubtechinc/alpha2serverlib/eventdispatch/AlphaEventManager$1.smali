.class Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager$1;
.super Ljava/lang/Object;
.source "AlphaEventManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager$1;->this$0:Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)I
    .locals 3
    .param p1, "a1"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;
    .param p2, "a2"    # Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    .prologue
    .line 904
    invoke-virtual {p1}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmPriority()I

    move-result v0

    .line 905
    .local v0, "priorityA":I
    invoke-virtual {p2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;->getmPriority()I

    move-result v1

    .line 906
    .local v1, "priorityB":I
    if-le v1, v0, :cond_0

    .line 907
    const/4 v2, -0x1

    .line 911
    :goto_0
    return v2

    .line 908
    :cond_0
    if-ge v1, v0, :cond_1

    .line 909
    const/4 v2, 0x1

    goto :goto_0

    .line 911
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 901
    check-cast p1, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    check-cast p2, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;

    invoke-virtual {p0, p1, p2}, Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEventManager$1;->compare(Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;Lcom/ubtechinc/alpha2serverlib/eventdispatch/AlphaEvent;)I

    move-result v0

    return v0
.end method
