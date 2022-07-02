.class Lcom/android/keyguard/KeyguardRMMViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardRMMViewController.java"


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

    .line 83
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteLockInfoChanged()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRMMViewController$2;->this$0:Lcom/android/keyguard/KeyguardRMMViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRMMViewController;->access$100(Lcom/android/keyguard/KeyguardRMMViewController;)V

    return-void
.end method
