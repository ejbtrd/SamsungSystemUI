.class Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;
.super Ljava/lang/Object;
.source "KeyguardSecSecurityContainerController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderStateChanged(Z)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    return-void
.end method
