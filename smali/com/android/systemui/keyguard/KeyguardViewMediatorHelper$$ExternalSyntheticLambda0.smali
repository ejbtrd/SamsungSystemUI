.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;->f$1:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->$r8$lambda$NZmQIaRc2YNSKOKLzlmXqktaxB4(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
