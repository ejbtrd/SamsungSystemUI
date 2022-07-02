.class public final synthetic Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZLcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$1:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;->f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->$r8$lambda$hSCLzSHNAlct7R7fG4p8G7N42Lw(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZLcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method
