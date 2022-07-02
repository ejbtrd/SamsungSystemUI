.class Lcom/android/keyguard/KeyguardRMMViewController$3;
.super Ljava/lang/Object;
.source "KeyguardRMMViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardRMMViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRMMViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRMMViewController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$3;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController$3;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRMMViewController;->access$200(Lcom/android/keyguard/KeyguardRMMViewController;)I

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRMMViewController$3;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardRMMViewController;->access$202(Lcom/android/keyguard/KeyguardRMMViewController;I)I

    .line 97
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController$3;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->access$300(Lcom/android/keyguard/KeyguardRMMViewController;)V

    :cond_0
    return-void
.end method
