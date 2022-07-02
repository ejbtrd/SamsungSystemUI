.class public final synthetic Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->$r8$lambda$OYbt8Z4EurkDrXMQIb00MZ1ILxI(Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;Ljava/util/function/Consumer;Landroid/net/Uri;)V

    return-void
.end method
