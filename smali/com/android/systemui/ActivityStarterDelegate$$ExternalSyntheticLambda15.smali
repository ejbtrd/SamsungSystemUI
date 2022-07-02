.class public final synthetic Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p2, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iget-object v1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$2:Z

    iget-boolean p0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda15;->f$3:Z

    check-cast p1, Ldagger/Lazy;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->$r8$lambda$VzYwcJ5ugviRnjiK4jlV9FrIJs0(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZZLdagger/Lazy;)V

    return-void
.end method
