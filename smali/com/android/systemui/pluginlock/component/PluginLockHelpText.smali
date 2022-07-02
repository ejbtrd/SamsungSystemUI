.class public Lcom/android/systemui/pluginlock/component/PluginLockHelpText;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "PluginLockHelpText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockHelpText"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    const-string p0, "PluginLockHelpText"

    const-string p1, "apply()"

    .line 21
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recover()V
    .locals 0

    return-void
.end method

.method public reset(Z)V
    .locals 0

    const-string p0, "PluginLockHelpText"

    const-string/jumbo p1, "reset()"

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockHelpText"

    const-string/jumbo v1, "update()"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
