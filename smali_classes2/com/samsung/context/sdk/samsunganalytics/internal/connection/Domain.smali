.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
.super Ljava/lang/Enum;
.source "Domain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;


# instance fields
.field domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isEngBin()Z

    move-result v1

    const-string v2, "https://stg-api.di.atlas.samsung.com"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "https://regi.di.atlas.samsung.com"

    :goto_0
    const-string v3, "REGISTRATION"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 7
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isEngBin()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "https://dc.di.atlas.samsung.com"

    :goto_1
    const-string v3, "POLICY"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 8
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v3, "DLS"

    const/4 v6, 0x2

    const-string v7, ""

    invoke-direct {v2, v3, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    .line 5
    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1

    .line 5
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method
