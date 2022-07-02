.class public final synthetic Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->$r8$lambda$2swGodi3jJOKSH2tn-QG1Xl48bM(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method
