.class Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "KeyguardSecPinBasedInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    .line 66
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextEntryKey(Z)V

    return-void
.end method
