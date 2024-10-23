.class Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionListListener;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener$Stub;
.source "AlphaActonServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaActionListListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionListListener;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionListListener;-><init>(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)V

    return-void
.end method


# virtual methods
.method public onGetActionList(Ljava/lang/String;)V
    .locals 6
    .param p1, "list"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    const-string v5, "##"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "str":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 350
    .local v1, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_0

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .restart local v1    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    array-length v5, v4

    rem-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_0

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .restart local v1    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    if-ge v3, v5, :cond_0

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v0, "action":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v2, v3, 0x4

    .line 357
    .local v2, "count":I
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v5, v2, 0x2

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v5, v2, 0x3

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "action":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil$AlphaActionListListener;->this$0:Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;

    invoke-static {v5}, Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;->access$600(Lcom/ubtechinc/alpha2serverlib/util/AlphaActonServiceUtil;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;->onGetActionList(Ljava/util/ArrayList;)V

    .line 366
    return-void
.end method
