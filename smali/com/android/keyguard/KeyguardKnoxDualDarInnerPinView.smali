.class public Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;
.super Lcom/android/keyguard/KeyguardSecPINView;
.source "KeyguardKnoxDualDarInnerPinView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 29
    sget p0, Lcom/android/systemui/R$id;->dualdar_inner_pinEntry:I

    return p0
.end method
