.class Lcom/android/keyguard/KeyguardFMMViewController$2;
.super Ljava/lang/Object;
.source "KeyguardFMMViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFMMViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFMMViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFMMViewController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFMMViewController;->access$100(Lcom/android/keyguard/KeyguardFMMViewController;)I

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardFMMViewController;->access$102(Lcom/android/keyguard/KeyguardFMMViewController;I)I

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/KeyguardFMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardFMMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardFMMViewController;->access$200(Lcom/android/keyguard/KeyguardFMMViewController;)V

    :cond_0
    return-void
.end method
