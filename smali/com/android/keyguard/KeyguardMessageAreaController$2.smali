.class Lcom/android/keyguard/KeyguardMessageAreaController$2;
.super Ljava/lang/Object;
.source "KeyguardMessageAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMessageAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageAreaController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageAreaController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController$2;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$2;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$400(Lcom/android/keyguard/KeyguardMessageAreaController;)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$2;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$500(Lcom/android/keyguard/KeyguardMessageAreaController;)V

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$2;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$402(Lcom/android/keyguard/KeyguardMessageAreaController;I)I

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$2;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$300(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$2;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$200(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    return-void
.end method
