.class public final Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;
.super Ljava/lang/Object;
.source "MagnetizedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$initHapticSettingObserver(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;Landroid/content/Context;)V
    .locals 0

    .line 617
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion;->initHapticSettingObserver(Landroid/content/Context;)V

    return-void
.end method

.method private final initHapticSettingObserver(Landroid/content/Context;)V
    .locals 2

    .line 631
    invoke-static {}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->access$getHapticSettingObserverInitialized$cp()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 636
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;

    invoke-direct {v0, p1, p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 647
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_enabled"

    .line 648
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    .line 647
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p0, 0x0

    .line 652
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$Companion$initHapticSettingObserver$hapticSettingObserver$1;->onChange(Z)V

    .line 653
    invoke-static {v1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->access$setHapticSettingObserverInitialized$cp(Z)V

    return-void
.end method
