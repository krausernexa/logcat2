.class public Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "OfflineQADomain.java"


# static fields
.field private static offlineQADomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;

.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private mAction_Dance:[Ljava/lang/String;

.field private mColor:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPoem_Story:[Ljava/lang/String;

.field private mQA_Ability:[Ljava/lang/String;

.field private mQA_Afraid_Die:[Ljava/lang/String;

.field private mQA_Afraid_Of:[Ljava/lang/String;

.field private mQA_Age:[Ljava/lang/String;

.field private mQA_Alone:[Ljava/lang/String;

.field private mQA_Birthday:[Ljava/lang/String;

.field private mQA_Come_From:[Ljava/lang/String;

.field private mQA_Do_What:[Ljava/lang/String;

.field private mQA_Dream:[Ljava/lang/String;

.field private mQA_Family:[Ljava/lang/String;

.field private mQA_Favorite_Color:[Ljava/lang/String;

.field private mQA_Favorite_Sport:[Ljava/lang/String;

.field private mQA_From:[Ljava/lang/String;

.field private mQA_Give_Me_Hand:[Ljava/lang/String;

.field private mQA_Good_Or_Bad:[Ljava/lang/String;

.field private mQA_Help_You:[Ljava/lang/String;

.field private mQA_How_Do_You_Do:[Ljava/lang/String;

.field private mQA_Is_Thing:[Ljava/lang/String;

.field private mQA_Like_Watch_Tv:[Ljava/lang/String;

.field private mQA_Like_Weather:[Ljava/lang/String;

.field private mQA_Like_What_Music:[Ljava/lang/String;

.field private mQA_Like_pizza:[Ljava/lang/String;

.field private mQA_Matter:[Ljava/lang/String;

.field private mQA_Meaning_Life:[Ljava/lang/String;

.field private mQA_Name:[Ljava/lang/String;

.field private mQA_Outfit:[Ljava/lang/String;

.field private mQA_Question:[Ljava/lang/String;

.field private mQA_Quit_Smoke_Drink:[Ljava/lang/String;

.field private mQA_Should_I_Do:[Ljava/lang/String;

.field private mQA_Travel:[Ljava/lang/String;

.field private mQA_What_Is_That:[Ljava/lang/String;

.field private mQA_What_Make_Angry:[Ljava/lang/String;

.field private mQA_What_Should_I_Do:[Ljava/lang/String;

.field private mQA_What_You_Do:[Ljava/lang/String;

.field private mQA_Where:[Ljava/lang/String;

.field private mQA_Will_Die:[Ljava/lang/String;

.field private mQA_Your_Day:[Ljava/lang/String;

.field private mQA_Your_Strengths:[Ljava/lang/String;

.field private mThing:[Ljava/lang/String;

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
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->offlineQADomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Name:[Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Ability:[Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_From:[Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Family:[Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Age:[Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Where:[Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Birthday:[Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mAction_Dance:[Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mPoem_Story:[Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Question:[Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Dream:[Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Do_What:[Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Color:[Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mColor:[Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Come_From:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Will_Die:[Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Die:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Of:[Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Alone:[Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Should_I_Do:[Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Sport:[Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Outfit:[Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Is_Thing:[Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mThing:[Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Travel:[Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Is_That:[Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_Weather:[Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_pizza:[Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Meaning_Life:[Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Good_Or_Bad:[Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Help_You:[Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Day:[Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Give_Me_Hand:[Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_You_Do:[Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Matter:[Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Quit_Smoke_Drink:[Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Should_I_Do:[Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Make_Angry:[Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_What_Music:[Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_Watch_Tv:[Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_How_Do_You_Do:[Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Strengths:[Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->setBusy(Z)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->threadList:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->initQA()V

    .line 76
    return-void
.end method

.method public static getOfflineQADomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 79
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->offlineQADomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->offlineQADomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;

    .line 81
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 83
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->offlineQADomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;

    return-object v0
.end method


# virtual methods
.method public cancelAction()V
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 299
    .local v0, "item":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0

    .line 302
    .end local v0    # "item":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public initQA()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Question:[Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Dream:[Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Do_What:[Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Color:[Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mColor:[Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Come_From:[Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Will_Die:[Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Die:[Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Of:[Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Alone:[Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Should_I_Do:[Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Sport:[Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Outfit:[Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Is_Thing:[Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mThing:[Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Travel:[Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Is_That:[Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_Weather:[Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_pizza:[Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Meaning_Life:[Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Good_Or_Bad:[Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Help_You:[Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Day:[Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Give_Me_Hand:[Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_You_Do:[Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Matter:[Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Quit_Smoke_Drink:[Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Should_I_Do:[Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Make_Angry:[Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_What_Music:[Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_Watch_Tv:[Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_How_Do_You_Do:[Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Strengths:[Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Name:[Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Ability:[Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_From:[Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Family:[Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Age:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Where:[Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Birthday:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 6
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "tag"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, 0x0

    .line 149
    .local v3, "ttsContent":Ljava/lang/String;
    const-string v4, "QA_CHATTING"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 150
    const-string v4, "Let me ask you a question"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Let me ask you something"

    .line 151
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "I have sommething to ask you"

    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "There\'s something I want to know"

    .line 153
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    :cond_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Question:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 155
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Question:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 288
    :cond_1
    :goto_0
    if-eqz v3, :cond_30

    .line 289
    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 293
    :goto_1
    return-void

    .line 156
    :cond_2
    const-string v4, "What do you dream about"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Do you dream"

    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "What are your dreams"

    .line 158
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Tell me about a dream you had"

    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Tell me about your dreams"

    .line 160
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 161
    :cond_3
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Dream:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 162
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Dream:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto :goto_0

    .line 163
    :cond_4
    const-string v4, "What do you want to do"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "What can we do"

    .line 164
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "What should we do"

    .line 165
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "What should we do today"

    .line 166
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ""

    .line 167
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 168
    :cond_5
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Do_What:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 169
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Do_What:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto :goto_0

    .line 170
    :cond_6
    const-string v4, "What\'s your favorite color"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "What color do you like"

    .line 171
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 172
    :cond_7
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Color:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 173
    if-nez v1, :cond_8

    .line 174
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mColor:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 175
    .local v0, "colorIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Color:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mColor:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    goto/16 :goto_0

    .line 177
    .end local v0    # "colorIndex":I
    :cond_8
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Color:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 180
    :cond_9
    const-string v4, "Where do robots come from"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 181
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Come_From:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 182
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Come_From:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 183
    :cond_a
    const-string v4, "Will you die"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "Can robots die"

    .line 184
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "Do robots die"

    .line 185
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 186
    :cond_b
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Will_Die:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 187
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Will_Die:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 188
    :cond_c
    const-string v4, "Are you afraid to die"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ""

    .line 189
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 190
    :cond_d
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Die:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 191
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Die:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 192
    :cond_e
    const-string v4, "What are you afraid of"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 193
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Of:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 194
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Afraid_Of:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 195
    :cond_f
    const-string v4, "What do you do when I\'m not home"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "What do you do when you are alone"

    .line 196
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 197
    :cond_10
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Alone:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 198
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Alone:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 199
    :cond_11
    const-string v4, "What should I do with my life"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "What should I do with myself"

    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 201
    :cond_12
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Should_I_Do:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 202
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Should_I_Do:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 203
    :cond_13
    const-string v4, "What\'s your favorite sport"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "What sports do you like"

    .line 204
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "Do you like sports"

    .line 205
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 206
    :cond_14
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Sport:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 207
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Favorite_Sport:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 208
    :cond_15
    const-string v4, "Does this outfit look good"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 209
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Outfit:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 210
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Outfit:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 211
    :cond_16
    const-string v4, "Do you like to travel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 212
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Travel:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 213
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Travel:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 214
    :cond_17
    const-string v4, "What was that"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 215
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Is_That:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 216
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Is_That:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 217
    :cond_18
    const-string v4, "Do you want pizza"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 218
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_pizza:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 219
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_pizza:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 220
    :cond_19
    const-string v4, "What\'s the meaning of life"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 221
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Meaning_Life:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 222
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Meaning_Life:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 223
    :cond_1a
    const-string v4, "Are you good or bad"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 224
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Good_Or_Bad:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 225
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Good_Or_Bad:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 226
    :cond_1b
    const-string v4, "Can I help you"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 227
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Help_You:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 228
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Help_You:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 229
    :cond_1c
    const-string v4, "How was your day"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 230
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Day:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 231
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Day:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 232
    :cond_1d
    const-string v4, "Can you give me a hand"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 233
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Give_Me_Hand:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 234
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Give_Me_Hand:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 235
    :cond_1e
    const-string v4, "What have you been up to lately"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 236
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_You_Do:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 237
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_You_Do:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 238
    :cond_1f
    const-string v4, "What\'s the matter"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v4, "What\'s wrong"

    .line 239
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 240
    :cond_20
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Matter:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 241
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Matter:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 242
    :cond_21
    const-string v4, "How do I quit smoking"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "How do I quit drinking"

    .line 243
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 244
    :cond_22
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Quit_Smoke_Drink:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 245
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Quit_Smoke_Drink:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 246
    :cond_23
    const-string v4, "What should I do"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 247
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Should_I_Do:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 248
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Should_I_Do:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 249
    :cond_24
    const-string v4, "What makes you angry"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 250
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Make_Angry:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 251
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_What_Make_Angry:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 252
    :cond_25
    const-string v4, "What kind of music do you like"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 253
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_What_Music:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 254
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_What_Music:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 255
    :cond_26
    const-string v4, "Do you like to watch TV"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 256
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_Watch_Tv:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 257
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Like_Watch_Tv:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 258
    :cond_27
    const-string v4, "How do you do"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 259
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_How_Do_You_Do:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 260
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_How_Do_You_Do:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 261
    :cond_28
    const-string v4, "What are your strengths"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Strengths:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 263
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Your_Strengths:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 265
    :cond_29
    const-string v4, "QA_Name"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 266
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Name:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 267
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Name:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 268
    :cond_2a
    const-string v4, "QA_From"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 269
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Ability:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 270
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Ability:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 271
    :cond_2b
    const-string v4, "QA_Ability"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 272
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Ability:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 273
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Ability:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 274
    :cond_2c
    const-string v4, "QA_Where"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 275
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Where:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 276
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Where:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 277
    :cond_2d
    const-string v4, "QA_Birthday"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 278
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Birthday:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 279
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Birthday:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 280
    :cond_2e
    const-string v4, "QA_Age"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 281
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Age:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 282
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Age:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 283
    :cond_2f
    const-string v4, "QA_Family"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Family:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 285
    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->mQA_Family:[Ljava/lang/String;

    aget-object v3, v4, v1

    goto/16 :goto_0

    .line 291
    :cond_30
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
