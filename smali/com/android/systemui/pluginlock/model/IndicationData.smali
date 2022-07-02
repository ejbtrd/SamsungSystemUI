.class public Lcom/android/systemui/pluginlock/model/IndicationData;
.super Ljava/lang/Object;
.source "IndicationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;,
        Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;
    }
.end annotation


# instance fields
.field private mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "help_text"
    .end annotation
.end field

.field private mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lock_icon"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;-><init>(Lcom/android/systemui/pluginlock/model/IndicationData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    return-object p0
.end method

.method public getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;-><init>(Lcom/android/systemui/pluginlock/model/IndicationData;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    return-object p0
.end method

.method public setHelpTextData(Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mHelpTextData:Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    return-void
.end method

.method public setLockIconData(Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/IndicationData;->mLockIconData:Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    return-void
.end method
