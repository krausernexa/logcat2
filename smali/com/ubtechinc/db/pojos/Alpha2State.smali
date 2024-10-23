.class public Lcom/ubtechinc/db/pojos/Alpha2State;
.super Ljava/lang/Object;
.source "Alpha2State.java"


# static fields
.field public static SQL:Ljava/lang/String;


# instance fields
.field public debug:I

.field public power:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "CREATE TABLE state (_id INTEGER PRIMARY KEY,power INTEGER,debug INTEGER);"

    sput-object v0, Lcom/ubtechinc/db/pojos/Alpha2State;->SQL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
