.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

.field public final synthetic f$1:Landroid/os/UserManager;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$1:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$2:Landroid/os/UserHandle;

    iput p4, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$1:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$2:Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$$ExternalSyntheticLambda6;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->$r8$lambda$8FKZsa-3kca1Gv2gNDhNiVie5p8(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/UserManager;Landroid/os/UserHandle;I)V

    return-void
.end method
