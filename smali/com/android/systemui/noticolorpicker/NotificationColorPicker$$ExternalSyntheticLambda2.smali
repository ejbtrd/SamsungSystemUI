.class public final synthetic Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->$r8$lambda$_UcEntkx9dbBo7qx9t3IkpWYItE(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method
