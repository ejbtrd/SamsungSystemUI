.class Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainerController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnApplyWindowInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 199
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$700(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 201
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 203
    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    .line 204
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$800(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v2, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$802(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)I

    .line 206
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$902(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Z)Z

    .line 207
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    .line 209
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Integer;->max(II)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v0

    .line 213
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$1300(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$1000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$1100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$1200(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p0

    invoke-virtual {v1, v2, v3, p0, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 214
    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
