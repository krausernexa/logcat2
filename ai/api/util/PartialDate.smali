.class public Lai/api/util/PartialDate;
.super Ljava/lang/Object;
.source "PartialDate.java"


# static fields
.field private static final UNSPECIFIED_DATE:Ljava/lang/String; = "uu"

.field private static final UNSPECIFIED_HOUR:Ljava/lang/String; = "uu"

.field private static final UNSPECIFIED_MINUTE:Ljava/lang/String; = "uu"

.field private static final UNSPECIFIED_MONTH:Ljava/lang/String; = "uu"

.field public static final UNSPECIFIED_VALUE:Ljava/lang/Integer;

.field private static final UNSPECIFIED_YEAR:Ljava/lang/String; = "uuuu"


# instance fields
.field private final c:Ljava/util/Calendar;

.field private final unspecifiedFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    .line 48
    iput-object p1, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    .line 53
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 54
    return-void
.end method

.method private getFieldAsString(I)Ljava/lang/String;
    .locals 6
    .param p1, "field"    # I

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 113
    if-ne p1, v2, :cond_1

    .line 114
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "uuuu"

    .line 144
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string v0, "%4d"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    if-ne p1, v1, :cond_3

    .line 120
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "uu"

    goto :goto_0

    .line 123
    :cond_2
    const-string v0, "%02d"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_3
    const/4 v0, 0x3

    if-lt p1, v0, :cond_5

    const/16 v0, 0x8

    if-gt p1, v0, :cond_5

    .line 126
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    const-string v0, "uu"

    goto :goto_0

    .line 129
    :cond_4
    const-string v0, "%02d"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    if-gt p1, v4, :cond_7

    .line 132
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    const-string v0, "uu"

    goto :goto_0

    .line 135
    :cond_6
    const-string v0, "%02d"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :cond_7
    if-ne p1, v5, :cond_9

    .line 138
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    const-string v0, "uu"

    goto/16 :goto_0

    .line 141
    :cond_8
    const-string v0, "%02d"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :cond_9
    const-string v0, "%s"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public get(I)Ljava/lang/Integer;
    .locals 5
    .param p1, "field"    # I

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/16 v2, 0xc

    .line 80
    if-ne p1, v1, :cond_1

    .line 81
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    goto :goto_0

    .line 85
    :cond_1
    if-ne p1, v3, :cond_3

    .line 86
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    goto :goto_0

    .line 90
    :cond_3
    const/4 v0, 0x3

    if-lt p1, v0, :cond_5

    const/16 v0, 0x8

    if-gt p1, v0, :cond_5

    .line 91
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_4
    sget-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    goto :goto_0

    .line 95
    :cond_5
    const/16 v0, 0xa

    if-lt p1, v0, :cond_7

    if-gt p1, v4, :cond_7

    .line 96
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 97
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_6
    sget-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    goto :goto_0

    .line 100
    :cond_7
    if-ne p1, v2, :cond_9

    .line 101
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 102
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_8
    sget-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    goto :goto_0

    .line 106
    :cond_9
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public set(ILjava/lang/Integer;)V
    .locals 5
    .param p1, "field"    # I
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 57
    sget-object v0, Lai/api/util/PartialDate;->UNSPECIFIED_VALUE:Ljava/lang/Integer;

    if-ne p2, v0, :cond_5

    .line 58
    if-ne p1, v1, :cond_1

    .line 59
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    if-ne p1, v2, :cond_2

    .line 61
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x3

    if-lt p1, v0, :cond_3

    const/16 v0, 0x8

    if-gt p1, v0, :cond_3

    .line 63
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_3
    const/16 v0, 0xa

    if-lt p1, v0, :cond_4

    if-gt p1, v3, :cond_4

    .line 65
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_4
    if-ne p1, v4, :cond_0

    .line 67
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_5
    iget-object v0, p0, Lai/api/util/PartialDate;->unspecifiedFields:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lai/api/util/PartialDate;->c:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 150
    const-string v0, "%s-%s-%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, v4}, Lai/api/util/PartialDate;->getFieldAsString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 152
    invoke-direct {p0, v5}, Lai/api/util/PartialDate;->getFieldAsString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x5

    .line 153
    invoke-direct {p0, v2}, Lai/api/util/PartialDate;->getFieldAsString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 150
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
