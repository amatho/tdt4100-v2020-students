module ovinger {
    opens app;
    exports encapsulation;
    exports interfaces;
    exports debugging;
    exports stateandbehavior;
    exports interfaces.twitter;
    exports objectstructures;

    requires guava;
    requires javafx.base;
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.graphics;
    requires junit;
    requires no.hal.jex.jextest.lib;
    requires org.eclipse.xtext.xbase.lib;
}