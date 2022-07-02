.class public interface abstract Lcom/android/systemui/plugins/facewidget/PluginClockProvider;
.super Ljava/lang/Object;
.source "PluginClockProvider.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/SupportVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;
    }
.end annotation


# virtual methods
.method public abstract forceRefresh(Landroid/view/View;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f4
    .end annotation
.end method

.method public abstract getClockGroup(I)I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = 0x2
        version = 0x3f0
    .end annotation
.end method

.method public abstract getClockView(I)Landroid/view/View;
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method

.method public abstract getDefaultClockType()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = 0x2
        version = 0x3ea
    .end annotation
.end method

.method public abstract getLockClockType()I
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        defInt = 0x2
        version = 0x3ea
    .end annotation
.end method

.method public abstract isStartAlignClock(I)Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method

.method public abstract registerClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method

.method public abstract setAdaptiveColors(Landroid/view/View;[I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f4
    .end annotation
.end method

.method public abstract setClockType(I)Z
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f0
    .end annotation
.end method

.method public abstract setColorThemeAdaptiveColor(Landroid/view/View;IZ)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x407
    .end annotation
.end method

.method public abstract setFontColorType(Landroid/view/View;I)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x407
    .end annotation
.end method

.method public abstract setPreDefineOrCustomColor(Landroid/view/View;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3f0
    .end annotation
.end method

.method public abstract unregisterClockChangedCallback(Lcom/android/systemui/plugins/facewidget/PluginClockProvider$ClockCallback;)V
    .annotation runtime Lcom/android/systemui/plugins/annotations/VersionCheck;
        version = 0x3ea
    .end annotation
.end method
