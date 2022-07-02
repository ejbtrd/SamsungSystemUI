.class public final synthetic Lcom/android/systemui/accessibility/FlexPanelInteractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/FlexPanelInteractor$$ExternalSyntheticLambda1;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/FlexPanelInteractor;->$r8$lambda$KzA8t_fmSa6nuOlw1XVzHx5j4vE(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
