.class public Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockSwipe.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockSwipe"


# instance fields
.field private mNonSwipeMode:I

.field private mNonSwipeModeAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    const/16 p1, 0x2d

    .line 13
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockSwipe"

    const-string v1, "apply()"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->getMode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    .line 25
    invoke-virtual {p2}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;->getAngle()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    :cond_1
    return-void
.end method

.method public getNonSwipeMode()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    return p0
.end method

.method public getNonSwipeModeAngle()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    return p0
.end method

.method public recover()V
    .locals 0

    return-void
.end method

.method public reset(Z)V
    .locals 1

    const-string p1, "PluginLockSwipe"

    const-string/jumbo v0, "reset()"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeMode:I

    const/16 p1, 0x2d

    .line 43
    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->mNonSwipeModeAngle:I

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockSwipe"

    const-string/jumbo v1, "update()"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
