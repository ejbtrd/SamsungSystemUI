.class public final synthetic Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPinViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPinViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecPinViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->verifyPasswordAndUnlock()V

    return-void
.end method
