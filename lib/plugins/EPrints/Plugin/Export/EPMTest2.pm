package EPrints::Plugin::Export::EPMTest2;

use EPrints::Plugin::Export::TextFile;

@ISA = ( "EPrints::Plugin::Export::TextFile" );

use strict;
use EPrints::EPMTest::Utils;

sub new
{
	my( $class, %opts ) = @_;

	my $self = $class->SUPER::new( %opts );

	$self->{name} = "EPM Test 2";
	$self->{accept} = [ 'dataobj/eprint', 'list/eprint' ];
	$self->{visible} = "all";

	$self->{disable} = 1;
	
	return $self;
}


sub output_dataobj
{
	my( $plugin, $dataobj ) = @_;

	EPrints::EPMTest::Utils::test( "EPM Test 2" );

	return "This is an EPM test 2\n";
}
