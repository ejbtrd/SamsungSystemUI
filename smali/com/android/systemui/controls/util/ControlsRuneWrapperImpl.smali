.class public final Lcom/android/systemui/controls/util/ControlsRuneWrapperImpl;
.super Ljava/lang/Object;
.source "ControlsRuneWrapperImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/util/ControlsRuneWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public supportBlockStartBeforeSecureBootUnlock()Z
    .locals 0

    .line 10
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_BLOCK_START_BEFORE_SECURE_BOOT_UNLOCK:Z

    return p0
.end method

.method public supportBlur()Z
    .locals 0

    .line 7
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_BLUR:Z

    return p0
.end method

.method public supportCapturedBlur()Z
    .locals 0

    .line 12
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_CAPTURED_BLUR:Z

    return p0
.end method
