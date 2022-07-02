.class public interface abstract Lcom/android/systemui/settings/brightness/ToggleSlider;
.super Ljava/lang/Object;
.source "ToggleSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;
    }
.end annotation


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getValue()I
.end method

.method public abstract initBrightnessIconResources()V
.end method

.method public abstract mirrorTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setOnChangedListener(Lcom/android/systemui/settings/brightness/ToggleSlider$Listener;)V
.end method

.method public abstract setValue(I)V
.end method

.method public abstract updateDualSeekBar(Z)V
.end method

.method public abstract updateHighBrightnessModeEnter(Z)V
.end method

.method public abstract updateOutdoorMode(Z)V
.end method

.method public abstract updateSystemBrightnessEnabled(Z)V
.end method

.method public abstract updateUsingHighBrightnessDialog(Z)V
.end method
