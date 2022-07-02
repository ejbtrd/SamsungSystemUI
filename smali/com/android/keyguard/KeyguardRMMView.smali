.class public Lcom/android/keyguard/KeyguardRMMView;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.source "KeyguardRMMView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardRMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    .line 23
    sget p0, Lcom/android/systemui/R$id;->rmmEntry:I

    return p0
.end method

.method public getWrongPasswordStringId()I
    .locals 0

    .line 28
    sget p0, Lcom/android/systemui/R$string;->kg_incorrect_pin:I

    return p0
.end method
