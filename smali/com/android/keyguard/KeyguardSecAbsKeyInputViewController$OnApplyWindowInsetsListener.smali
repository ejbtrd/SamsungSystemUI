.class Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "KeyguardSecAbsKeyInputViewController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnApplyWindowInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$100(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$102(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)I

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->access$202(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;Z)Z

    .line 112
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    :cond_1
    return-object p2
.end method
