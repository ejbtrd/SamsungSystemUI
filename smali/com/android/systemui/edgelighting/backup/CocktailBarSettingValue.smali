.class public Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;
.super Ljava/lang/Object;
.source "CocktailBarSettingValue.java"


# instance fields
.field mName:Ljava/lang/String;

.field mType:Ljava/lang/String;

.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    return-void
.end method
