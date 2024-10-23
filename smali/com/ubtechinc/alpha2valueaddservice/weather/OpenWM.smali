.class public Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;
.super Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;
.source "OpenWM.java"


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "c28dcc3c58b02f09625f3cb8716fe34d"

.field private static final CLOUD_MAX_STANDARD:I = 0x5f

.field private static final CLOUD_MIN_STANDARD:I = 0x5

.field private static final HUMIDITY_MAX_STANDARD:I = 0x5a

.field private static final HUMIDITY_MIN_STANDARD:I = 0xa

.field private static final RAIN_TOTAL_STANDARD:I = 0x50

.field private static final WIND_SPEED_STANDARD:F = 7.0f

.field private static commonOpenWM:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;


# instance fields
.field private dayDesc:I

.field private mCityName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

.field private mStandardTime:Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

.field private mWeatherCondition:Ljava/lang/String;

.field private maxCloud:I

.field private maxHumidity:I

.field private maxTemp:I

.field private minCloud:I

.field private minHumidity:I

.field private minTemp:I

.field private nightDesc:I

.field private rainDay:F

.field private rainNight:F

.field private windSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->commonOpenWM:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mStandardTime:Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    .line 43
    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    .line 46
    iput v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    .line 47
    iput v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->nightDesc:I

    .line 48
    const/16 v0, -0x12c

    iput v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    .line 49
    const/16 v0, 0x12c

    iput v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    .line 50
    iput v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    .line 51
    iput v4, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    .line 52
    iput v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->windSpeed:F

    .line 53
    iput v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxCloud:I

    .line 54
    iput v4, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minCloud:I

    .line 55
    iput v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainDay:F

    .line 56
    iput v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainNight:F

    .line 60
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->weatherResultListenerList:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    invoke-direct {v0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    .line 63
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private AbsoluteToCentigrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 500
    .local v0, "tempreture":I
    add-int/lit16 v0, v0, -0x111

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;
    .param p1, "x1"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->parseCurrentWeather(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;
    .param p1, "x1"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->parseForcast5Weather(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private determineDesc(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "descCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v9, 0x2db

    const/16 v8, 0x2bc

    const/16 v7, 0x386

    const/16 v6, 0x384

    const/16 v5, 0x258

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "desc":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 508
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 509
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 511
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 513
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 514
    .local v2, "item":I
    if-lt v2, v6, :cond_4

    if-gt v2, v7, :cond_4

    .line 515
    move v0, v2

    .line 512
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 516
    :cond_4
    if-lt v2, v5, :cond_6

    if-ge v2, v8, :cond_6

    .line 517
    if-lt v0, v6, :cond_5

    if-le v0, v7, :cond_3

    .line 519
    :cond_5
    move v0, v2

    goto :goto_2

    .line 521
    :cond_6
    if-lt v2, v9, :cond_a

    const/16 v3, 0x320

    if-ge v2, v3, :cond_a

    .line 522
    if-lt v0, v6, :cond_8

    if-gt v0, v7, :cond_8

    .line 527
    :cond_7
    :goto_3
    move v0, v2

    goto :goto_2

    .line 523
    :cond_8
    if-lt v0, v5, :cond_9

    if-lt v0, v8, :cond_7

    .line 525
    :cond_9
    move v0, v2

    goto :goto_3

    .line 528
    :cond_a
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_e

    if-ge v2, v5, :cond_e

    .line 529
    if-lt v0, v6, :cond_b

    if-le v0, v7, :cond_3

    .line 530
    :cond_b
    if-lt v0, v5, :cond_c

    if-lt v0, v8, :cond_3

    .line 531
    :cond_c
    if-lt v0, v9, :cond_d

    const/16 v3, 0x320

    if-lt v0, v3, :cond_3

    .line 533
    :cond_d
    move v0, v2

    goto :goto_2

    .line 536
    :cond_e
    if-lt v0, v6, :cond_f

    if-le v0, v7, :cond_3

    .line 537
    :cond_f
    if-lt v0, v5, :cond_10

    if-lt v0, v8, :cond_3

    .line 538
    :cond_10
    if-lt v0, v9, :cond_11

    const/16 v3, 0x320

    if-lt v0, v3, :cond_3

    .line 539
    :cond_11
    const/16 v3, 0xc8

    if-lt v0, v3, :cond_12

    if-lt v0, v5, :cond_3

    .line 541
    :cond_12
    move v0, v2

    goto :goto_2
.end method

.method public static getForOpenWMInstance(Landroid/content/Context;)Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->commonOpenWM:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->commonOpenWM:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    .line 70
    :cond_0
    sget-object v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->commonOpenWM:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;

    return-object v0
.end method

.method private organizeDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->nightDesc:I

    if-ne v1, v2, :cond_5

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The weather of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v2, v3}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :goto_0
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    const/16 v2, -0x12c

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum tempretrue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", minimum tempretrue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainDay:F

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainNight:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42a00000    # 80.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", precipitation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainDay:F

    iget v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainNight:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millimeter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_1
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    const/16 v2, 0x5a

    if-le v1, v2, :cond_6

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", humidity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_2
    :goto_1
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->windSpeed:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", wind is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->windSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_3
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxCloud:I

    const/16 v2, 0x5f

    if-le v1, v2, :cond_7

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cloud is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxCloud:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 364
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, " during the day, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->nightDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, " in the evening.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 379
    :cond_6
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", humidity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 389
    :cond_7
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minCloud:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    goto :goto_2
.end method

.method private organizeWeatherJudge()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/16 v6, 0x1e

    const/16 v5, 0xa

    const/4 v4, 0x5

    const/16 v3, 0x320

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "rain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_1

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 401
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "hot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 405
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    if-ge v1, v6, :cond_3

    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x388

    if-ne v1, v2, :cond_4

    .line 406
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be hot. The maximun tempretrue will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 407
    :cond_4
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    if-ge v1, v4, :cond_5

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be cold. The maximun tempretrue will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 410
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be warm. The maximun tempretrue will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 412
    :cond_6
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "cold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 413
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    if-lt v1, v4, :cond_7

    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x387

    if-ne v1, v2, :cond_8

    .line 414
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be cold. The minimun tempretrue will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 415
    :cond_8
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    if-lt v1, v6, :cond_9

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be hot. The minimun tempretrue will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 418
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be warm. The minimun tempretrue will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 420
    :cond_a
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "snow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 421
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_b

    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_b

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :goto_2
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 424
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 427
    :cond_c
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "fog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "mist"

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "smoke"

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "mist"

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 431
    :cond_d
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x2bc

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    if-ge v1, v3, :cond_e

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :goto_3
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 434
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 437
    :cond_f
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "wet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "moist"

    .line 438
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 439
    :cond_10
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    if-lt v1, v7, :cond_11

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be wet. The humidity will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 441
    :cond_11
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    if-ge v1, v5, :cond_12

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be dry. The humidity will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 444
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be comfortable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 446
    :cond_13
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "dry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 447
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    if-ge v1, v5, :cond_14

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be wet. The humidity will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 449
    :cond_14
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    if-lt v1, v7, :cond_15

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be dry. The humidity will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 452
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be comfortable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 454
    :cond_16
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "cloud"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 455
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    if-le v1, v3, :cond_17

    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x384

    if-ge v1, v2, :cond_17

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :goto_4
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 458
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 461
    :cond_18
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "sun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 462
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    if-ne v1, v3, :cond_19

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :goto_5
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 465
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 468
    :cond_1a
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "hurricane"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 469
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    const/16 v2, 0x386

    if-ne v1, v2, :cond_1b

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Yes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :goto_6
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 472
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 475
    :cond_1c
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    const-string v2, "temperature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 476
    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    const/16 v2, -0x12c

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum tempretrue of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", minimum tempretrue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 481
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mOpenWMDescript:Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;

    iget v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWMDescript;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private parseCurrentWeather(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;)Ljava/lang/String;
    .locals 15
    .param p1, "openWMCurrentResp"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;

    .prologue
    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->getWeather()[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    move-result-object v6

    .line 178
    .local v6, "openWMWeather":[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    array-length v13, v6

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v3, v6, v12

    .line 179
    .local v3, "item":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    invoke-virtual {v3}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "desc":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v14, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 181
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "item":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->getMain()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;

    move-result-object v5

    .line 186
    .local v5, "openWMMain":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;
    if-eqz v5, :cond_5

    .line 187
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->getTemp_max()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "temp_max":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->removeDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 189
    invoke-direct {p0, v10}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->AbsoluteToCentigrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    if-eqz v10, :cond_2

    const-string v12, ""

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 191
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", maximum tempretrue is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->getTemp_min()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, "temp_min":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->removeDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 196
    invoke-direct {p0, v11}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->AbsoluteToCentigrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 197
    if-eqz v11, :cond_3

    const-string v12, ""

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 198
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", minimum tempretrue is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->getHumidity()I

    move-result v12

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_4

    .line 202
    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->getHumidity()I

    move-result v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_5

    .line 203
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMMain;->getHumidity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "humidity":Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v12, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", humidity is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .end local v2    # "humidity":Ljava/lang/String;
    .end local v10    # "temp_max":Ljava/lang/String;
    .end local v11    # "temp_min":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->getWind()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    move-result-object v7

    .line 211
    .local v7, "openWMWind":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;->getSpeed()F

    move-result v12

    const/high16 v13, 0x40e00000    # 7.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;->getSpeed()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "m/s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, "speed":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v12, ""

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 214
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", wind is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .end local v9    # "speed":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCurrentResp;->getClouds()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    move-result-object v4

    .line 219
    .local v4, "openWMClouds":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;->getAll()I

    move-result v12

    const/16 v13, 0x5f

    if-gt v12, v13, :cond_7

    .line 220
    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;->getAll()I

    move-result v12

    const/4 v13, 0x5

    if-ge v12, v13, :cond_8

    .line 221
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;->getAll()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "cloud":Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v12, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 223
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", cloud is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .end local v0    # "cloud":Ljava/lang/String;
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method private parseForcast5Weather(Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;)Ljava/lang/String;
    .locals 32
    .param p1, "openWMForcast5Rsp"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mStandardTime:Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getYear()I

    move-result v26

    .line 231
    .local v26, "year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mStandardTime:Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getMonth()I

    move-result v11

    .line 232
    .local v11, "month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mStandardTime:Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;->getDay()I

    move-result v4

    .line 233
    .local v4, "day":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v18, "sBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    const-string v27, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v27, 0xa

    move/from16 v0, v27

    if-ge v11, v0, :cond_0

    .line 237
    const-string v27, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v27, "-"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const/16 v27, 0xa

    move/from16 v0, v27

    if-ge v4, v0, :cond_1

    .line 242
    const-string v27, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "date":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v19, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcast5Rsp;->getList()[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;

    move-result-object v14

    .line 249
    .local v14, "openWMList":[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;
    if-nez v14, :cond_2

    .line 250
    const/4 v7, 0x0

    .line 355
    :goto_0
    return-object v7

    .line 253
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v20, "sbMinTemp":Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v21, "sbSub":Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->resetParameter()V

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v5, "dayDescrip":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v12, "nightDescrip":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v0, v14

    move/from16 v29, v0

    const/16 v27, 0x0

    move/from16 v28, v27

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_13

    aget-object v10, v14, v28

    .line 261
    .local v10, "item":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->getDt_txt()Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "dt_txt":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 263
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->getWeather()[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;

    move-result-object v16

    .line 264
    .local v16, "openWMWeather":[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    const/16 v27, 0x0

    :goto_2
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_7

    aget-object v25, v16, v27

    .line 265
    .local v25, "weather":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    invoke-virtual/range {v25 .. v25}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;->getId()I

    move-result v6

    .line 266
    .local v6, "desc":I
    const-string v31, "12:00:00"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_3

    const-string v31, "12:00:00"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_3

    const-string v31, "15:00:00"

    .line 267
    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_3

    const-string v31, "06:00:00"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 268
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_4
    :goto_3
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 269
    :cond_5
    const-string v31, "18:00:00"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_6

    const-string v31, "21:00:00"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 270
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 273
    .end local v6    # "desc":I
    .end local v25    # "weather":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    :cond_7
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->getMain()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;

    move-result-object v15

    .line 274
    .local v15, "openWMMain":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;
    if-eqz v15, :cond_b

    .line 275
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->getTemp_max()F

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 276
    .local v23, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->removeDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->AbsoluteToCentigrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 278
    if-eqz v23, :cond_9

    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 279
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 280
    .local v24, "tempValue":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 281
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    .line 283
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    .line 284
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    .line 288
    .end local v24    # "tempValue":I
    :cond_9
    invoke-virtual {v15}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->getHumidity()I

    move-result v9

    .line 289
    .local v9, "humidityValue":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v9, v0, :cond_a

    .line 290
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    .line 292
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_b

    .line 293
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    .line 297
    .end local v9    # "humidityValue":I
    .end local v23    # "temp":Ljava/lang/String;
    :cond_b
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->getWind()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;

    move-result-object v17

    .line 298
    .local v17, "openWMWind":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;
    if-eqz v17, :cond_c

    .line 299
    invoke-virtual/range {v17 .. v17}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;->getSpeed()F

    move-result v22

    .line 300
    .local v22, "speedValue":F
    const/high16 v27, 0x40e00000    # 7.0f

    cmpl-float v27, v22, v27

    if-lez v27, :cond_c

    .line 301
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->windSpeed:F

    .line 305
    .end local v22    # "speedValue":F
    :cond_c
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->getClouds()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;

    move-result-object v13

    .line 306
    .local v13, "openWMClouds":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;
    if-eqz v13, :cond_e

    .line 307
    invoke-virtual {v13}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;->getAll()I

    move-result v2

    .line 308
    .local v2, "cloudValue":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxCloud:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v2, v0, :cond_d

    .line 309
    move-object/from16 v0, p0

    iput v2, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxCloud:I

    .line 311
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minCloud:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v2, v0, :cond_e

    .line 312
    move-object/from16 v0, p0

    iput v2, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minCloud:I

    .line 260
    .end local v2    # "cloudValue":I
    .end local v13    # "openWMClouds":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;
    .end local v15    # "openWMMain":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;
    .end local v16    # "openWMWeather":[Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWeather;
    .end local v17    # "openWMWind":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMWind;
    :cond_e
    :goto_4
    add-int/lit8 v27, v28, 0x1

    move/from16 v28, v27

    goto/16 :goto_1

    .line 316
    :cond_f
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 317
    invoke-virtual {v10}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;->getMain()Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;

    move-result-object v15

    .line 318
    .restart local v15    # "openWMMain":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;
    if-eqz v15, :cond_e

    .line 319
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->getTemp_min()F

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v30, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 320
    .restart local v23    # "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->removeDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->AbsoluteToCentigrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 322
    if-eqz v23, :cond_11

    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    .line 323
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 324
    .restart local v24    # "tempValue":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_10

    .line 325
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    .line 327
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_11

    .line 328
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    .line 332
    .end local v24    # "tempValue":I
    :cond_11
    invoke-virtual {v15}, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;->getHumidity()I

    move-result v9

    .line 333
    .restart local v9    # "humidityValue":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v9, v0, :cond_12

    .line 334
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    .line 336
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_e

    .line 337
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    goto/16 :goto_4

    .line 342
    .end local v8    # "dt_txt":Ljava/lang/String;
    .end local v9    # "humidityValue":I
    .end local v10    # "item":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMList;
    .end local v15    # "openWMMain":Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/forcast/OpenWMForcastMain;
    .end local v23    # "temp":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->determineDesc(Ljava/util/ArrayList;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->determineDesc(Ljava/util/ArrayList;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->nightDesc:I

    .line 345
    const/4 v7, 0x0

    .line 346
    .local v7, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v27, :cond_14

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->organizeDescription()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 350
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->organizeWeatherJudge()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 353
    :cond_15
    const-string v7, ""

    goto/16 :goto_0
.end method

.method private removeDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "result":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "strs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 491
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 495
    :goto_0
    return-object v0

    .line 493
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private resetParameter()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 550
    iput v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->dayDesc:I

    .line 551
    iput v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->nightDesc:I

    .line 552
    const/16 v0, -0x12c

    iput v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxTemp:I

    .line 553
    const/16 v0, 0x12c

    iput v0, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minTemp:I

    .line 554
    iput v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxHumidity:I

    .line 555
    iput v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minHumidity:I

    .line 556
    iput v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->windSpeed:F

    .line 557
    iput v2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->maxCloud:I

    .line 558
    iput v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->minCloud:I

    .line 559
    iput v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainDay:F

    .line 560
    iput v1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->rainNight:F

    .line 561
    return-void
.end method


# virtual methods
.method public getCurrentWeatherData(Ljava/lang/String;)V
    .locals 6
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "http://api.openweathermap.org/data/2.5/weather?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v3, "&lang=English_en"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v3, "&APPID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v3, "c28dcc3c58b02f09625f3cb8716fe34d"

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "request":Ljava/lang/String;
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;

    iget-object v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;

    invoke-direct {v4, p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$1;-><init>(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;)V

    invoke-direct {v0, v3, v4}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;)V

    .line 118
    .local v0, "action":Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;
    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->setParamerObj(Ljava/lang/String;)V

    .line 119
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/16 v3, 0x4e21

    invoke-virtual {v0, v3, p1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->doRequest(ILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public getFiveDayWeatherData(Ljava/lang/String;Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;Ljava/lang/String;)V
    .locals 6
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "standardTime"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;
    .param p3, "weatherCondition"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p2, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mStandardTime:Lcom/ubtechinc/alpha2valueaddservice/entrity/StandardTime;

    .line 126
    iput-object p3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mWeatherCondition:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mCityName:Ljava/lang/String;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "http://api.openweathermap.org/data/2.5/forecast?q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, "&lang=English_en"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "&APPID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "c28dcc3c58b02f09625f3cb8716fe34d"

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "request":Ljava/lang/String;
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;

    iget-object v3, p0, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$2;

    invoke-direct {v4, p0}, Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM$2;-><init>(Lcom/ubtechinc/alpha2valueaddservice/weather/OpenWM;)V

    invoke-direct {v0, v3, v4}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;)V

    .line 170
    .local v0, "action":Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;
    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->setParamerObj(Ljava/lang/String;)V

    .line 171
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/16 v3, 0x4e22

    invoke-virtual {v0, v3, p1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->doRequest(ILjava/lang/String;)V

    .line 173
    return-void
.end method
